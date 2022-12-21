//========= Copyright Valve Corporation, All rights reserved. ============//
//
// Purpose: 
//
//=============================================================================//

#include "cbase.h"
#include "npcevent.h"
#include "in_buttons.h"

#ifdef CLIENT_DLL
	#include "c_hl2mp_player.h"
#else
	#include "grenade_ar2.h"
	#include "hl2mp_player.h"
	#include "basegrenade_shared.h"
#endif

#include "weapon_hl2mpbase.h"
#include "weapon_hl2mpbase_machinegun.h"

#ifdef CLIENT_DLL
#define CWeaponOICW C_WeaponOICW
#endif

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

#define OICW_GRENADE_DAMAGE 100.0f
#define OICW_GRENADE_RADIUS 250.0f

class CWeaponOICW : public CHL2MPMachineGun
{
public:
	DECLARE_CLASS(CWeaponOICW, CHL2MPMachineGun);

	CWeaponOICW();

	DECLARE_NETWORKCLASS();
	DECLARE_PREDICTABLE();

	void	Precache(void);
	void	AddViewKick(void);
	void	SecondaryAttack(void);

	int		GetMinBurst() { return 2; }
	int		GetMaxBurst() { return 5; }

	virtual void Equip(CBaseCombatCharacter *pOwner);
	bool	Reload(void);

	Activity	GetPrimaryAttackActivity(void);

	/***** BEGIN ZOOM *****/
	bool Holster(CBaseCombatWeapon *pSwitchingTo = NULL);
	void ItemPreFrame(void);
	void ItemPostFrame(void);
	void ItemBusyFrame(void);
	void ToggleZoom(void);
	void CheckZoomToggle(void);
	bool m_bInZoom = 0;
	/***** END ZOOM *****/

	float	GetFireRate() { return m_bInZoom ? 0.3f : 0.1f; }

	virtual const Vector&
	GetBulletSpread(void)
	{
		static Vector cone_zoomed = VECTOR_CONE_1DEGREES;
		static Vector cone_normal = VECTOR_CONE_3DEGREES;
		return m_bInZoom ? cone_zoomed : cone_normal;
	}

	const WeaponProficiencyInfo_t *GetProficiencyValues();

#ifndef CLIENT_DLL
	DECLARE_ACTTABLE();
#endif

protected:
	Vector	m_vecTossVelocity;
	float	m_flNextGrenadeCheck;

private:
	CWeaponOICW(const CWeaponOICW &);
};

IMPLEMENT_NETWORKCLASS_ALIASED(WeaponOICW, DT_WeaponOICW)

BEGIN_NETWORK_TABLE(CWeaponOICW, DT_WeaponOICW)
END_NETWORK_TABLE()

BEGIN_PREDICTION_DATA(CWeaponOICW)
END_PREDICTION_DATA()

LINK_ENTITY_TO_CLASS(weapon_oicw, CWeaponOICW);
PRECACHE_WEAPON_REGISTER(weapon_oicw);

#ifndef CLIENT_DLL
acttable_t	CWeaponOICW::m_acttable[] = {
	{ ACT_HL2MP_IDLE,                 ACT_HL2MP_IDLE_AR2,                 false },
	{ ACT_HL2MP_RUN,                  ACT_HL2MP_RUN_AR2,                  false },
	{ ACT_HL2MP_IDLE_CROUCH,          ACT_HL2MP_IDLE_CROUCH_AR2,          false },
	{ ACT_HL2MP_WALK_CROUCH,          ACT_HL2MP_WALK_CROUCH_AR2,          false },
	{ ACT_HL2MP_GESTURE_RANGE_ATTACK, ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2, false },
	{ ACT_HL2MP_GESTURE_RELOAD,       ACT_HL2MP_GESTURE_RELOAD_AR2,       false },
	{ ACT_HL2MP_JUMP,                 ACT_HL2MP_JUMP_AR2,                 false },
	{ ACT_RANGE_ATTACK1,              ACT_RANGE_ATTACK_AR2,               false },
};

IMPLEMENT_ACTTABLE(CWeaponOICW);
#endif

//=========================================================

CWeaponOICW::
CWeaponOICW(void)
{
	m_fMinRange1 = 65;
	m_fMaxRange1 = 2048;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void
CWeaponOICW::Precache(void)
{
#ifndef CLIENT_DLL
	UTIL_PrecacheOther("grenade_ar2");
#endif

	BaseClass::Precache();
}

//-----------------------------------------------------------------------------
// Purpose: Give this weapon longer range when wielded by an ally NPC.
//-----------------------------------------------------------------------------
void
CWeaponOICW::Equip(CBaseCombatCharacter *pOwner)
{
	m_fMaxRange1 = 1400;

	BaseClass::Equip(pOwner);
}

//-----------------------------------------------------------------------------
// ed was here =)
//-----------------------------------------------------------------------------
bool
CWeaponOICW::Holster(CBaseCombatWeapon *pSwitchingTo)
{
	if (m_bInZoom)
		ToggleZoom();
	return BaseClass::Holster(pSwitchingTo);
}

void
CWeaponOICW::ItemPreFrame(void)
{
	BaseClass::ItemPreFrame();
}

void
CWeaponOICW::ItemPostFrame(void)
{
	CheckZoomToggle();
	BaseClass::ItemPostFrame();
}

void
CWeaponOICW::ItemBusyFrame(void)
{
	CheckZoomToggle();
	BaseClass::ItemBusyFrame();
}

void
CWeaponOICW::CheckZoomToggle(void)
{
	//init player
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());
	if (pPlayer && pPlayer->m_afButtonPressed&IN_ATTACK3)
		ToggleZoom();
}

void
CWeaponOICW::ToggleZoom(void)
{
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());
	if (!pPlayer)
		return;
#ifndef CLIENT_DLL
	//ADS-zoomcolor
	color32 scope = { 50, 255, 170, 32 };
	if (m_bInZoom) {
		if (pPlayer->SetFOV(this, 0, 0.1f)) {
			WeaponSound(SPECIAL2);
			UTIL_ScreenFade(pPlayer, scope, 0.2f, 0, (FFADE_IN | FFADE_PURGE));
		}
	} else {
		if (pPlayer->SetFOV(this, 35, 0.1f)) {
			WeaponSound(SPECIAL1);
			UTIL_ScreenFade(pPlayer, scope, 0.2f, 0, (FFADE_OUT | FFADE_PURGE | FFADE_STAYOUT));
		}
	}
	//more efficient like this
	pPlayer->ShowViewModel(m_bInZoom);
	m_bInZoom = !m_bInZoom;
#endif
}

//-----------------------------------------------------------------------------
// Purpose: 
// Output : Activity
//-----------------------------------------------------------------------------
Activity
CWeaponOICW::GetPrimaryAttackActivity(void)
{
	if (m_nShotsFired < 2)
		return ACT_VM_PRIMARYATTACK;

	if (m_nShotsFired < 3)
		return ACT_VM_RECOIL1;

	if (m_nShotsFired < 4)
		return ACT_VM_RECOIL2;

	return ACT_VM_RECOIL3;
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------
bool
CWeaponOICW::Reload(void)
{
	bool fRet;
	float fCacheTime = m_flNextSecondaryAttack;

	fRet = DefaultReload(GetMaxClip1(), GetMaxClip2(), ACT_VM_RELOAD);
	if (fRet) {
		// Undo whatever the reload process has done to our secondary
		// attack timer. We allow you to interrupt reloading to fire
		// a grenade.
		m_flNextSecondaryAttack = GetOwner()->m_flNextAttack = fCacheTime;

		WeaponSound(RELOAD);
	}

	return fRet;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void
CWeaponOICW::AddViewKick(void)
{
#define	$EASY_DAMPEN		0.5f
#define	$MAX_VERTICAL_KICK	24.0f	//Degrees
#define	$SLIDE_LIMIT		3.0f	//Seconds

	//Get the view kick
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());

	if (pPlayer == NULL)
		return;

	DoMachineGunKick(pPlayer, $EASY_DAMPEN, $MAX_VERTICAL_KICK, m_fFireDuration, $SLIDE_LIMIT);
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void
CWeaponOICW::SecondaryAttack(void)
{
	// Only the player fires this way so we can cast
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());

	if (pPlayer == NULL)
		return;

	//Must have ammo
	if ((pPlayer->GetAmmoCount(m_iSecondaryAmmoType) <= 0) || (pPlayer->GetWaterLevel() == 3)) {
		SendWeaponAnim(ACT_VM_DRYFIRE);
		BaseClass::WeaponSound(EMPTY);
		m_flNextSecondaryAttack = gpGlobals->curtime;// + 0.5f;

		return;
	}

	//if (m_bInReload)
		m_bInReload = false;

	// MUST call sound before removing a round from the clip of a CMachineGun
	BaseClass::WeaponSound(WPN_DOUBLE);

	Vector vecSrc = pPlayer->Weapon_ShootPosition();
	Vector	vecThrow;
	// Don't autoaim on grenade tosses
	AngleVectors(pPlayer->EyeAngles() + pPlayer->GetPunchAngle(), &vecThrow);
	VectorScale(vecThrow, 1000.0f, vecThrow);

#ifndef CLIENT_DLL
	//Create the grenade
	CGrenadeAR2 *pGrenade = (CGrenadeAR2*)Create("grenade_ar2", vecSrc, vec3_angle, pPlayer);
	pGrenade->SetAbsVelocity(vecThrow);

	pGrenade->SetLocalAngularVelocity(RandomAngle(-400, 400));
	pGrenade->SetMoveType(MOVETYPE_FLYGRAVITY, MOVECOLLIDE_FLY_BOUNCE);
	pGrenade->SetThrower(GetOwner());
	pGrenade->SetDamage(OICW_GRENADE_DAMAGE);
	pGrenade->SetDamageRadius(OICW_GRENADE_RADIUS);
#endif

	SendWeaponAnim(ACT_VM_SECONDARYATTACK);

	// player "shoot" animation
	pPlayer->SetAnimation(PLAYER_ATTACK1);

	// Decrease ammo
	pPlayer->RemoveAmmo(1, m_iSecondaryAmmoType);

	// Can shoot again immediately
	m_flNextPrimaryAttack = gpGlobals->curtime + 0.5f;

	// Can blow up after a short delay (so have time to release mouse button)
	m_flNextSecondaryAttack = gpGlobals->curtime + 1.0f;
}

//-----------------------------------------------------------------------------
const
WeaponProficiencyInfo_t *CWeaponOICW::GetProficiencyValues(void)
{
	static WeaponProficiencyInfo_t proficiencyTable[] =
	{
		{ 7.0, 0.75        },
		{ 5.00, 0.75       },
		{ 10.0 / 3.0, 0.75 },
		{ 5.0 / 3.0, 0.75  },
		{ 1.00, 1.0        },
	};

	COMPILE_TIME_ASSERT(ARRAYSIZE(proficiencyTable) == WEAPON_PROFICIENCY_PERFECT + 1);

	return proficiencyTable;
}
