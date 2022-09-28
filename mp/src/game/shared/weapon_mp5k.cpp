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
#define CWeaponMP5K C_WeaponMP5K
#endif

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

class CWeaponMP5K : public CHL2MPMachineGun
{
public:
	DECLARE_CLASS(CWeaponMP5K, CHL2MPMachineGun);

	CWeaponMP5K();

	DECLARE_NETWORKCLASS();
	DECLARE_PREDICTABLE();


	void	Precache(void);
	void	AddViewKick(void);

	int		GetMinBurst() { return 2; }
	int		GetMaxBurst() { return 5; }

	virtual void Equip(CBaseCombatCharacter *pOwner);
	bool	Reload(void);

	Activity	GetPrimaryAttackActivity(void);

	float	GetFireRate() { return 0.1f; }

	virtual const Vector&
	GetBulletSpread(void)
	{
		static const Vector cone = VECTOR_CONE_5DEGREES;
		return cone;
	}

	const WeaponProficiencyInfo_t *GetProficiencyValues();

#ifndef CLIENT_DLL
	DECLARE_ACTTABLE();
#endif

private:
	CWeaponMP5K(const CWeaponMP5K &);
};

IMPLEMENT_NETWORKCLASS_ALIASED(WeaponMP5K, DT_WeaponMP5K)

BEGIN_NETWORK_TABLE(CWeaponMP5K, DT_WeaponMP5K)
END_NETWORK_TABLE()

BEGIN_PREDICTION_DATA(CWeaponMP5K)
END_PREDICTION_DATA()

LINK_ENTITY_TO_CLASS(weapon_MP5K, CWeaponMP5K);
PRECACHE_WEAPON_REGISTER(weapon_MP5K);

#ifndef CLIENT_DLL
acttable_t	CWeaponMP5K::m_acttable[] = {
	{ ACT_HL2MP_IDLE,                 ACT_HL2MP_IDLE_SMG1,                 false },
	{ ACT_HL2MP_RUN,                  ACT_HL2MP_RUN_SMG1,                  false },
	{ ACT_HL2MP_IDLE_CROUCH,          ACT_HL2MP_IDLE_CROUCH_SMG1,          false },
	{ ACT_HL2MP_WALK_CROUCH,          ACT_HL2MP_WALK_CROUCH_SMG1,          false },
	{ ACT_HL2MP_GESTURE_RANGE_ATTACK, ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1, false },
	{ ACT_HL2MP_GESTURE_RELOAD,       ACT_HL2MP_GESTURE_RELOAD_SMG1,       false },
	{ ACT_HL2MP_JUMP,                 ACT_HL2MP_JUMP_SMG1,                 false },
	{ ACT_RANGE_ATTACK1,              ACT_RANGE_ATTACK_SMG1,               false },
};

IMPLEMENT_ACTTABLE(CWeaponMP5K);
#endif

//=========================================================

CWeaponMP5K::
CWeaponMP5K(void)
{
	m_fMinRange1 = 65;
	m_fMaxRange1 = 1024;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void
CWeaponMP5K::Precache(void)
{
	BaseClass::Precache();
}

//-----------------------------------------------------------------------------
// Purpose: Give this weapon longer range when wielded by an ally NPC.
//-----------------------------------------------------------------------------
void
CWeaponMP5K::Equip(CBaseCombatCharacter *pOwner)
{
	m_fMaxRange1 = 1400;

	BaseClass::Equip(pOwner);
}

//-----------------------------------------------------------------------------
// Purpose: 
// Output : Activity
//-----------------------------------------------------------------------------
Activity
CWeaponMP5K::GetPrimaryAttackActivity(void)
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
CWeaponMP5K::Reload(void)
{
	bool fRet;

	fRet = DefaultReload(GetMaxClip1(), GetMaxClip2(), ACT_VM_RELOAD);
	if (fRet)
		WeaponSound(RELOAD);

	return fRet;
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
void
CWeaponMP5K::AddViewKick(void)
{
#define	EASY_DAMPEN			0.2f
#define	MAX_VERTICAL_KICK	3.0f	//Degrees
#define	SLIDE_LIMIT			3.0f	//Seconds

	//Get the view kick
	CBasePlayer *pPlayer = ToBasePlayer(GetOwner());

	if (pPlayer == NULL)
		return;

	DoMachineGunKick(pPlayer, EASY_DAMPEN, MAX_VERTICAL_KICK, m_fFireDuration, SLIDE_LIMIT);
}

//-----------------------------------------------------------------------------
const
WeaponProficiencyInfo_t *CWeaponMP5K::GetProficiencyValues(void)
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
