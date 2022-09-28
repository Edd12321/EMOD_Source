// Created by Crowbar 0.71

$modelname "weapons/w_AR1.mdl"

$bodygroup "studio"
{
	studio "w_AR1_AR1_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 1.19 -0.39 -0.3

$cdmaterials "models\weapons\w_AR1\\\"

$attachment "0" "ValveBiped.weapon_bone" 19.57 0.74 -0.26 rotate 2.27 -0.02 176.56
$attachment "1" "ValveBiped.weapon_bone" 4.44 1.37 0 rotate 3.43 90.11 -177.72
$attachment "2" "w_ar1.muzzle" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -15.38 -1.55 -7.15 17.76 0.76 6.55

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_R_Hand" 0 -1.5 -5 5 -1.5 0 ""
$hbox 0 "ValveBiped.weapon_bone" -13.66 -1.05 -5.35 19.57 -1.05 8.31 ""
$skipboneinbbox

$definebone "ValveBiped.Bip01_R_Hand" "" 11.564959 0.492126 4.822834 9.990419 177.461388 179.55928 0 0 0 0 0 0
$definebone "w_ar1.muzzle" "ValveBiped.Bip01_R_Hand" 28.86504 -1.752906 -8.04666 10.000006 -2.500045 90.000037 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped.Bip01_R_Hand" 8.207277 -0.850943 -4.300726 10.000005 -2.49993 90.000098 0 0 0 0 0 0

$animation "a_idle" "w_ar1_anims\a_idle.smd" {
	fps 30
}

$animation "a_attack1" "w_ar1_anims\a_attack1.smd" {
	fps 30
}

$animation "a_attack2" "w_ar1_anims\a_attack2.smd" {
	fps 30
	loop
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
	activity "ACT_RANGE_ATTACK_AR1" 1
	{ event 5023 0 "0" }
	{ event 3006 0 "1" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
}

$sequence "attack2" {
	"a_attack2"
	activity "ACT_RANGE_ATTACK_AR2_GRENADE" 1
	{ event 3012 1 "" }
	fadein 0.2
	fadeout 0.2
}


$collisionmodel "w_ar1_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
