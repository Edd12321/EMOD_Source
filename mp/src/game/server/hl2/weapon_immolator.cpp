//========= Copyright Valve Corporation, All rights reserved. ============//
//
// Purpose:
//
// $NoKeywords: $
//=============================================================================//

#include "cbase.h"
#include "weapon_hl2mpbasehlmpcombatweapon.h"
#include "weapon_hl2mpbase.h"
#ifdef CLIENT_DLL
	#include "c_hl2mp_player.h"
	#include "c_basecombatcharacter.h"
	#include "c_ai_basenpc.h"
	#include "c_te_particlesystem.h"
#else
	#include "basecombatcharacter.h"
	#include "hl2mp_player.h"
	#include "soundent.h"
	#include "ai_basenpc.h"
	#include "te_particlesystem.h"
	#include "ndebugoverlay.h"
	#include "ai_memory.h"
#include "util.h"
#endif
#include "in_buttons.h"

#ifdef CLIENT_DLL
#define CWeaponImmolator C_WeaponImmolator
#endif

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

#define MAX_BURN_RADIUS		256
#define RADIUS_GROW_RATE	50.0	// units/sec 

#define IMMOLATOR_TARGET_INVALID Vector( FLT_MAX, FLT_MAX, FLT_MAX )

class CWeaponImmolator : public CBaseHL2MPCombatWeapon
{
public:
	DECLARE_CLASS( CWeaponImmolator, CBaseHL2MPCombatWeapon );
	CWeaponImmolator();

	DECLARE_NETWORKCLASS();
	DECLARE_PREDICTABLE();

	void Precache( void );
	void PrimaryAttack( void );
	void ItemPostFrame( void );

#ifndef CLIENT_DLL
	int CapabilitiesGet(void) { return bits_CAP_WEAPON_RANGE_ATTACK1; }
#endif

	void ImmolationDamage( const CTakeDamageInfo &info, const Vector &vecSrcIn, float flRadius, int iClassIgnore );
	virtual bool WeaponLOSCondition( const Vector &ownerPos, const Vector &targetPos, bool bSetConditions );	
	virtual int	WeaponRangeAttack1Condition( float flDot, float flDist );

	void Update();
	void UpdateThink();

	void StartImmolating();
	void StopImmolating();
	bool IsImmolating() { return m_flBurnRadius != 0.0; }

	DECLARE_ACTTABLE();
private:
	CNetworkVar(int, m_beamIndex);
	CNetworkVar(float, m_flBurnRadius);
	CNetworkVar(float, m_flTimeLastUpdatedRadius);
	CNetworkVar(Vector, m_vecImmolatorTarget);
private:
	CWeaponImmolator(const CWeaponImmolator&);
};

IMPLEMENT_NETWORKCLASS_ALIASED(WeaponImmolator, DT_WeaponImmolator)

BEGIN_NETWORK_TABLE(CWeaponImmolator, DT_WeaponImmolator)
#ifdef CLIENT_DLL
	RecvPropInt   (RECVINFO(m_beamIndex)),
	RecvPropFloat (RECVINFO(m_flBurnRadius)),
	RecvPropTime  (RECVINFO(m_flTimeLastUpdatedRadius)),
	RecvPropVector(RECVINFO(m_vecImmolatorTarget)),
#else
	SendPropInt   (SENDINFO(m_beamIndex)),
	SendPropFloat (SENDINFO(m_flBurnRadius)),
	SendPropTime  (SENDINFO(m_flTimeLastUpdatedRadius)),
	SendPropVector(SENDINFO(m_vecImmolatorTarget)),
#endif
END_NETWORK_TABLE()

BEGIN_PREDICTION_DATA(CWeaponImmolator)
END_PREDICTION_DATA()

LINK_ENTITY_TO_CLASS( weapon_immolator, CWeaponImmolator );
PRECACHE_WEAPON_REGISTER( weapon_immolator );

//DEFINE_ENTITYFUNC( UpdateThink ),


//-----------------------------------------------------------------------------
// Maps base activities to weapons-specific ones so our characters do the right things.
//-----------------------------------------------------------------------------
acttable_t CWeaponImmolator::m_acttable[] = 
{
	{	ACT_RANGE_ATTACK1, ACT_RANGE_ATTACK_SNIPER_RIFLE, true }
};

IMPLEMENT_ACTTABLE( CWeaponImmolator );

//-----------------------------------------------------------------------------
// Constructor
//-----------------------------------------------------------------------------
CWeaponImmolator::CWeaponImmolator( void )
{
	m_fMaxRange1 = 4096;
	StopImmolating();
}

void CWeaponImmolator::StartImmolating()
{
	// Start the radius really tiny because we use radius == 0.0 to 
	// determine whether the immolator is operating or not.
	m_flBurnRadius = 0.1;
	m_flTimeLastUpdatedRadius = gpGlobals->curtime;
	SetThink(&CWeaponImmolator::UpdateThink);
	SetNextThink( gpGlobals->curtime );

#ifndef CLIENT_DLL
	CSoundEnt::InsertSound( SOUND_DANGER, m_vecImmolatorTarget, 256, 5.0, GetOwner() );
#endif
}

void CWeaponImmolator::StopImmolating()
{
	m_flBurnRadius = 0.0;
	SetThink( NULL );
	m_vecImmolatorTarget= IMMOLATOR_TARGET_INVALID;
	m_flNextPrimaryAttack = gpGlobals->curtime + 5.0;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void CWeaponImmolator::Precache( void )
{
	m_beamIndex = PrecacheModel( "sprites/bluelaser1.vmt" );

	BaseClass::Precache();
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void CWeaponImmolator::PrimaryAttack( void )
{
	WeaponSound( SINGLE );

	if( !IsImmolating() )
	{
		StartImmolating();
	} 
}

//-----------------------------------------------------------------------------
// This weapon is said to have Line of Sight when it CAN'T see the target, but
// can see a place near the target than can.
//-----------------------------------------------------------------------------
bool CWeaponImmolator::WeaponLOSCondition( const Vector &ownerPos, const Vector &targetPos, bool bSetConditions )
{
#ifndef CLIENT_DLL
	CAI_BaseNPC* npcOwner = GetOwner()->MyNPCPointer();

	if( !npcOwner )
	{
		return false;
	}
#endif
	if( IsImmolating() )
	{
		// Don't update while Immolating. This is a committed attack.
		return false;
	}

	// Assume we won't find a target.
	m_vecImmolatorTarget = targetPos;
	return true;
}

//-----------------------------------------------------------------------------
// Purpose: Weapon firing conditions
//-----------------------------------------------------------------------------
int CWeaponImmolator::WeaponRangeAttack1Condition( float flDot, float flDist )
{
#ifdef CLIENT_DLL
	//========================================================================
	// These are the default shared conditions (stolen from ai_condition.h :p)
	//========================================================================
	enum SCOND_t
	{
		COND_NONE,				// A way for a function to return no condition to get

		COND_IN_PVS,
		COND_IDLE_INTERRUPT,	// The schedule in question is a low priority idle, and therefore a candidate for translation into something else

		COND_LOW_PRIMARY_AMMO,
		COND_NO_PRIMARY_AMMO,
		COND_NO_SECONDARY_AMMO,
		COND_NO_WEAPON,
		COND_SEE_HATE,
		COND_SEE_FEAR,
		COND_SEE_DISLIKE,
		COND_SEE_ENEMY,
		COND_LOST_ENEMY,
		COND_ENEMY_WENT_NULL,	// What most people think COND_LOST_ENEMY is: This condition is set in the edge case where you had an enemy last think, but don't have one this think.
		COND_ENEMY_OCCLUDED,	// Can't see m_hEnemy
		COND_TARGET_OCCLUDED,	// Can't see m_hTargetEnt
		COND_HAVE_ENEMY_LOS,
		COND_HAVE_TARGET_LOS,
		COND_LIGHT_DAMAGE,
		COND_HEAVY_DAMAGE,
		COND_PHYSICS_DAMAGE,
		COND_REPEATED_DAMAGE,	//  Damaged several times in a row

		COND_CAN_RANGE_ATTACK1,	// Hitscan weapon only
		COND_CAN_RANGE_ATTACK2,	// Grenade weapon only
		COND_CAN_MELEE_ATTACK1,
		COND_CAN_MELEE_ATTACK2,

		COND_PROVOKED,
		COND_NEW_ENEMY,

		COND_ENEMY_TOO_FAR,		//	Can we get rid of this one!?!?
		COND_ENEMY_FACING_ME,
		COND_BEHIND_ENEMY,
		COND_ENEMY_DEAD,
		COND_ENEMY_UNREACHABLE,	// Not connected to me via node graph

		COND_SEE_PLAYER,
		COND_LOST_PLAYER,
		COND_SEE_NEMESIS,
		COND_TASK_FAILED,
		COND_SCHEDULE_DONE,
		COND_SMELL,
		COND_TOO_CLOSE_TO_ATTACK, // FIXME: most of this next group are meaningless since they're shared between all attack checks!
		COND_TOO_FAR_TO_ATTACK,
		COND_NOT_FACING_ATTACK,
		COND_WEAPON_HAS_LOS,
		COND_WEAPON_BLOCKED_BY_FRIEND,	// Friend between weapon and target
		COND_WEAPON_PLAYER_IN_SPREAD,	// Player in shooting direction
		COND_WEAPON_PLAYER_NEAR_TARGET,	// Player near shooting position
		COND_WEAPON_SIGHT_OCCLUDED,
		COND_BETTER_WEAPON_AVAILABLE,
		COND_HEALTH_ITEM_AVAILABLE,		// There's a healthkit available.
		COND_GIVE_WAY,					// Another npc requested that I give way
		COND_WAY_CLEAR,					// I no longer have to give way
		COND_HEAR_DANGER,
		COND_HEAR_THUMPER,
		COND_HEAR_BUGBAIT,
		COND_HEAR_COMBAT,
		COND_HEAR_WORLD,
		COND_HEAR_PLAYER,
		COND_HEAR_BULLET_IMPACT,
		COND_HEAR_PHYSICS_DANGER,
		COND_HEAR_MOVE_AWAY,
		COND_HEAR_SPOOKY,				// Zombies make this when Alyx is in darkness mode

		COND_NO_HEAR_DANGER,			// Since we can't use ~CONDITION. Mutually exclusive with COND_HEAR_DANGER

		COND_FLOATING_OFF_GROUND,

		COND_MOBBED_BY_ENEMIES,			// Surrounded by a large number of enemies melee attacking me. (Zombies or Antlions, usually).

		// Commander stuff
		COND_RECEIVED_ORDERS,
		COND_PLAYER_ADDED_TO_SQUAD,
		COND_PLAYER_REMOVED_FROM_SQUAD,

		COND_PLAYER_PUSHING,
		COND_NPC_FREEZE,				// We received an npc_freeze command while we were unfrozen
		COND_NPC_UNFREEZE,				// We received an npc_freeze command while we were frozen

		// This is a talker condition, but done here because we need to handle it in base AI
		// due to it's interaction with behaviors.
		COND_TALKER_RESPOND_TO_QUESTION,

		COND_NO_CUSTOM_INTERRUPTS,		// Don't call BuildScheduleTestBits for this schedule. Used for schedules that must strictly control their interruptibility.

		// ======================================
		// IMPORTANT: This must be the last enum
		// ======================================
		LAST_SHARED_CONDITION
	};
#endif

	if( m_flNextPrimaryAttack > gpGlobals->curtime )
	{
		// Too soon to attack!
		return COND_NONE;
	}

	if( IsImmolating() )
	{
		// Once is enough!
		return COND_NONE;
	}

	if( (Vector)m_vecImmolatorTarget == IMMOLATOR_TARGET_INVALID )
	{
		// No target!
		return COND_NONE;
	}

	if ( flDist > m_fMaxRange1 )
	{
		return COND_TOO_FAR_TO_ATTACK;
	}
	else if ( flDot < 0.5f )	// UNDONE: Why check this here? Isn't the AI checking this already?
	{
		return COND_NOT_FACING_ATTACK;
	}

	return COND_CAN_RANGE_ATTACK1;
}

void CWeaponImmolator::UpdateThink( void )
{
	CBaseCombatCharacter *pOwner = GetOwner();

	if( pOwner && !pOwner->IsAlive() )
	{
		StopImmolating();
		return;
	}

	Update();
	SetNextThink( gpGlobals->curtime + 0.05 );
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
void CWeaponImmolator::Update()
{
	float flDuration = gpGlobals->curtime - m_flTimeLastUpdatedRadius;
	if( flDuration != 0.0 )
	{
		m_flBurnRadius += RADIUS_GROW_RATE * flDuration;
	}

	// Clamp
	m_flBurnRadius = MIN( m_flBurnRadius, MAX_BURN_RADIUS );

	CBasePlayer *pOwner = ToBasePlayer( GetOwner() );

	Vector vecSrc;
	Vector vecAiming;

	if( pOwner )
	{
		vecSrc	 = pOwner->Weapon_ShootPosition( );
		vecAiming = pOwner->GetAutoaimVector(AUTOAIM_2DEGREES);
	}
	else
	{
		CBaseCombatCharacter *pOwner = GetOwner();

#ifndef CLIENT_DLL
		vecSrc = pOwner->Weapon_ShootPosition( );
#else
		pOwner;
#endif
		vecAiming = (Vector)m_vecImmolatorTarget - vecSrc;
		VectorNormalize( vecAiming );
	}

	trace_t	tr;
	UTIL_TraceLine( vecSrc, vecSrc + vecAiming * MAX_TRACE_LENGTH, MASK_SHOT, pOwner, COLLISION_GROUP_NONE, &tr );

	int brightness;
	brightness = 255 * (m_flBurnRadius/MAX_BURN_RADIUS);
#ifndef CLIENT_DLL
	UTIL_Beam(  vecSrc,
				tr.endpos,
				m_beamIndex,
				0,		//halo index
				0,		//frame start
				2.0f,	//framerate
				0.1f,	//life
				20,		// width
				1,		// endwidth
				0,		// fadelength,
				1,		// noise

				0,		// red
				255,	// green
				0,		// blue,

				brightness, // bright
				100  // speed
				);
#endif

	if( tr.DidHitWorld() )
	{
		int beams;

		for( beams = 0 ; beams < 5 ; beams++ )
		{
			Vector vecDest;

			// Random unit vector
			vecDest.x = random->RandomFloat( -1, 1 );
			vecDest.y = random->RandomFloat( -1, 1 );
			vecDest.z = random->RandomFloat( 0, 1 );

			// Push out to radius dist.
			vecDest = tr.endpos + vecDest * m_flBurnRadius;

#ifndef CLIENT_DLL
			UTIL_Beam(  tr.endpos,
						vecDest,
						m_beamIndex,
						0,		//halo index
						0,		//frame start
						2.0f,	//framerate
						0.15f,	//life
						20,		// width
						1.75,	// endwidth
						0.75,	// fadelength,
						15,		// noise

						0,		// red
						255,	// green
						0,		// blue,

						128, // bright
						100  // speed
						);
#endif
		}
		// Immolator starts to hurt a few seconds after the effect is seen
#ifndef CLIENT_DLL
		if( m_flBurnRadius > 64.0 )
		{
			ImmolationDamage( CTakeDamageInfo( this, this, 1, DMG_BURN ), tr.endpos, m_flBurnRadius, CLASS_NONE );
		}
#endif
	}
	else
	{
		// The attack beam struck some kind of entity directly.
	}

	m_flTimeLastUpdatedRadius = gpGlobals->curtime;

	if( m_flBurnRadius >= MAX_BURN_RADIUS )
	{
		StopImmolating();
	}
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void CWeaponImmolator::ItemPostFrame( void )
{
	BaseClass::ItemPostFrame();
}


#ifndef CLIENT_DLL
void CWeaponImmolator::ImmolationDamage( const CTakeDamageInfo &info, const Vector &vecSrcIn, float flRadius, int iClassIgnore )
{
	CBaseEntity *pEntity = NULL;
	trace_t		tr;
	Vector		vecSpot;

	Vector vecSrc = vecSrcIn;

	// iterate on all entities in the vicinity.
	for ( CEntitySphereQuery sphere( vecSrc, flRadius );
	      pEntity = (CBaseEntity*)sphere.GetCurrentEntity(), pEntity;
		  sphere.NextEntity() )
	{
		CBaseCombatCharacter *pBCC;

		pBCC = pEntity->MyCombatCharacterPointer();

		if ( pBCC && !pBCC->IsOnFire() )
		{
			// UNDONE: this should check a damage mask, not an ignore
			if ( iClassIgnore != CLASS_NONE && pEntity->Classify() == iClassIgnore )
			{
				continue;
			}

			if( pEntity == GetOwner() )
			{
				continue;
			}

			pBCC->Ignite( random->RandomFloat( 15, 20 ) );
		}
	}
}
#endif