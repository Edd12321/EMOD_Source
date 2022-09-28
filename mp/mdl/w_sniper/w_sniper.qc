// Created by Crowbar 0.71

$modelname "weapons/w_sniper.mdl"

$bodygroup "studio"
{
	studio "w_sniper_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.027 -4.598 -2.03

$cdmaterials "models\weapons\w_sniper\"

$attachment "muzzle" "muzzle" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -23.331 -1.506 -7.407 32.528 1.559 3.346

$definebone "ValveBiped.Bip01_R_Hand" "" -1.104172 8.35969 -5.25123 -0.13944 -93.316695 -179.852227 0 0 0 0 0 0
$definebone "sniper_base" "ValveBiped.Bip01_R_Hand" 8.29456 -1.599457 -5.226951 -0.139458 -93.316729 -89.852272 0 0 0 0 0 0
$definebone "muzzle" "sniper_base" 0.000002 -0.168146 32.705231 0 0 0 0 0 0 0 0 0

$animation "a_idle" "w_sniper_anims\idle.smd" {
	fps 30
}

$sequence "idle" {
	"a_idle"
	fadein 0.2
	fadeout 0.2
}


$collisionmodel "w_sniper_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
