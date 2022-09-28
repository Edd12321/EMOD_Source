// Created by Crowbar 0.71

$modelname "weapons/w_oicw.mdl"

$bodygroup "studio"
{
	studio "AR2_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.393 -1.19 -0.299

$cdmaterials "models\weapons\w_AR2\"

$attachment "0" "ValveBiped.Weapon_bone" 19.57 0.74 -0.26 rotate 2.27 -0.02 176.56
$attachment "1" "ValveBiped.Weapon_bone" 4.44 1.37 0 rotate 3.43 90.11 -177.72

$cbox 0 0 0 0 0 0

$bbox -15.381 -1.551 -7.145 17.761 0.764 6.548

$definebone "ValveBiped.Bip01_R_Hand" "" 0.713939 -9.363672 -3.466433 2.274184 90.051721 -178.082156 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -5 0 0 0 0 0 0 0 0 0

$animation "a_idle" "w_ar2_anims\idle.smd" {
	fps 30
}

$animation "a_attack1" "w_ar2_anims\attack1.smd" {
	fps 30
}

$animation "a_attack2" "w_ar2_anims\attack2.smd" {
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
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event 5003 0 "0" }
	{ event 3007 0 "1" }
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


$collisionmodel "w_ar2_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
