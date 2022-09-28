// Created by Crowbar 0.71

$modelname "weapons/w_mp5k.mdl"

$bodygroup "studio"
{
	studio "smg1_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 1.687 0.746 -0.882

$cdmaterials "models\weapons\w_smg1\"

$attachment "0" "ValveBiped.Weapon_bone" 12.61 -0.22 -4.04 rotate 9.02 -0.33 -91.94
$attachment "1" "ValveBiped.Weapon_bone" 2.4 0.57 -1.96 rotate 1.92 89.98 -80.98

$cbox 0 0 0 0 0 0

$bbox -9.577 0.077 -6.987 8.086 3.296 5.223

$definebone "ValveBiped.Bip01_R_Hand" "" 0.267086 -10.171795 -2.58952 10.87915 92.497277 -176.250641 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -5 0.000001 0 0 0 0 0 0 0 0

$animation "a_idle" "w_smg1_anims\idle.smd" {
	fps 30
	loop
	walkframe 1 LX
}

$animation "a_attack1" "w_smg1_anims\attack1.smd" {
	fps 20
	walkframe 1 LX
}

$animation "a_attackoffcenter" "w_smg1_anims\attackoffcenter.smd" {
	fps 20
	walkframe 1 LX
}

$sequence "idle" {
	"a_idle"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "attack1" {
	"a_attack1"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event 5003 0 "2" }
	{ event 3002 0 "" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
}

$sequence "attackoffcenter" {
	"a_attackoffcenter"
	{ event 5003 0 "2" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
}


$collisionmodel "w_smg1_physics.smd"
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
