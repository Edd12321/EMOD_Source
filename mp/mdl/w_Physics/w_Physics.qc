// Created by Crowbar 0.71

$modelname "weapons/W_physics.mdl"

$bodygroup "studio"
{
	studio "w_physics_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 3.227 -14.432 3.14

$cdmaterials "models\weapons\w_physics\\"

$attachment "core" "Physgun.Core_Attachment" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -2.826 -6.042 -2.777 28.689 12.496 7.941

$definebone "Physgun.bone" "" 0.000001 17.880703 6.011062 0 0.000745 89.99643 0 0 0 0 0 0
$definebone "Physgun.Core_Attachment" "Physgun.bone" 0.523248 2.510681 23.975895 0 89.999982 0 0 0 0 0 0 0

$animation "a_idle" "w_Physics_anims\idle.smd" {
	fps 30
	loop
}

$animation "a_attack1" "w_Physics_anims\attack1.smd" {
	fps 30
}

$animation "a_upgrade" "w_Physics_anims\upgrade.smd" {
	fps 30
}

$sequence "idle" {
	"a_idle"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "attack1" {
	"a_attack1"
	fadein 0.2
	fadeout 0.2
}

$sequence "upgrade" {
	"a_upgrade"
	activity "ACT_PHYSCANNON_UPGRADE" 1
	fadein 0.2
	fadeout 0.2
}


$collisionmodel "w_Physics_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
