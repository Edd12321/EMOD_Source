// Created by Crowbar 0.71

$modelname "weapons/W_flaregun.mdl"

$bodygroup "studio"
{
	studio "w_flaregun_reference.smd"
}


$contents "solid"

$illumposition -1.184 0.603 -0.343

$cdmaterials "models\weapons\v_flaregun\"

$cbox 0 0 0 0 0 0

$bbox -6.009 -5.136 -1.568 4.804 2.767 0.881

$definebone "Line03" "" -1.183835 0.612185 -0.36463 -0.20002 0 0 0 0 0 0 0 0

$animation "a_idle" "w_flaregun_anims\idle.smd" {
	fps 30
	loop
}

$animation "a_attack1" "w_flaregun_anims\attack1.smd" {
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


$collisionmodel "w_flaregun_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
