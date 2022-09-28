// Created by Crowbar 0.71

$modelname "weapons/w_immolator.mdl"

$bodygroup "Body"
{
	studio "w_immolator_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 3.977 3.863 6.25

$cdmaterials "models\Weapons\w_immolator\\"

$cbox 0 0 0 0 0 0

$bbox -25.763 -8.139 0.32 33.705 15.873 12.177

$definebone "Bone01" "" 0.017362 0 0.032655 -89.980215 89.999982 0 0 0 0 0 0 0

$animation "a_idle" "w_immolator_anims\a_idle.smd" {
	fps 30
}

$sequence "idle" {
	"a_idle"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
}


$collisionmodel "w_immolator_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
