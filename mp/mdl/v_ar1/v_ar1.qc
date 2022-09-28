// Created by Crowbar 0.71

$modelname "weapons/v_ar1.mdl"

$bodygroup "studio"
{
	studio "v_ar1.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 18.46 0.23 -7.59

$cdmaterials "models\weapons\v_ar1\"
$cdmaterials "models\weapons\v_hand\"

$attachment "muzzle" "v_ar1.Muzzle" 0 0 0 rotate 0 0 0
$attachment "1" "v_ar1.Eject" 0 0 0 rotate -25 -90 0

$cbox 0 0 0 0 0 0

$bbox 1.081 -7.379 -13.519 36.897 3.615 -3.324

$definebone "v_ar1.RightHand" "" -4.72441 -15.748032 60.236221 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "v_ar1.Muzzle" "v_ar1.RightHand" 25.19685 2.657469 0.19685 0 0 0 0 0 0 0 0 0
$definebone "v_ar1.Eject" "v_ar1.RightHand" 8.914922 3.423708 -0.405014 -0.009776 179.985962 179.986126 0 0 0 0 0 0
$definebone "v_ar1.Clip" "" -4.921255 -22.834648 60.236217 0 89.999982 89.999982 0 0 0 0 0 0
$definebone "v_ar1.LeftArm" "" 1.181097 -20.472443 58.267712 -20.000008 -125.00003 0 0 0 0 0 0 0
$definebone "v_ar1.LeftHand" "v_ar1.LeftArm" 8.661425 0.000007 -0.000004 0.000001 0.000001 0 0 0 0 0 0 0

$animation "a_idle1" "v_ar1_anims\idle1.smd" {
	fps 30
	loop
}

$animation "a_AR1_primary_fire" "v_ar1_anims\AR1_primary_fire.smd" {
	fps 30
}

$animation "a_AR1_primary_fire2" "v_ar1_anims\AR1_primary_fire2.smd" {
	fps 30
}

$animation "a_AR1_primary_fire3" "v_ar1_anims\AR1_primary_fire3.smd" {
	fps 30
}

$animation "a_AR1_primary_fire4" "v_ar1_anims\AR1_primary_fire4.smd" {
	fps 30
}

$animation "a_AR1_primary_fire5" "v_ar1_anims\AR1_primary_fire5.smd" {
	fps 30
}

$animation "a_AR1_primary_fire6" "v_ar1_anims\AR1_primary_fire6.smd" {
	fps 30
}

$animation "a_AR1_primary_fire7" "v_ar1_anims\AR1_primary_fire7.smd" {
	fps 30
}

$animation "a_AR1_primary_fire8" "v_ar1_anims\AR1_primary_fire8.smd" {
	fps 30
}

$animation "a_AR1_primary_fire9" "v_ar1_anims\AR1_primary_fire9.smd" {
	fps 30
}

$animation "a_AR1_primary_fire10" "v_ar1_anims\AR1_primary_fire10.smd" {
	fps 30
}

$animation "a_AR1_primary_fire11" "v_ar1_anims\AR1_primary_fire11.smd" {
	fps 30
}

$animation "a_AR1_primary_fire12" "v_ar1_anims\AR1_primary_fire12.smd" {
	fps 30
}

$animation "a_AR1_primary_fire13" "v_ar1_anims\AR1_primary_fire13.smd" {
	fps 30
}

$animation "a_AR1_primary_fire14" "v_ar1_anims\AR1_primary_fire14.smd" {
	fps 30
}

$animation "a_AR1_primary_fire15" "v_ar1_anims\AR1_primary_fire15.smd" {
	fps 30
}

$animation "a_AR1_primary_fire16" "v_ar1_anims\AR1_primary_fire16.smd" {
	fps 30
}

$animation "a_AR1_primary_fire17" "v_ar1_anims\AR1_primary_fire17.smd" {
	fps 30
}

$animation "a_AR1_primary_fire18" "v_ar1_anims\AR1_primary_fire18.smd" {
	fps 30
}

$animation "a_fireempty" "v_ar1_anims\fireempty.smd" {
	fps 30
}

$animation "a_altfire" "v_ar1_anims\altfire.smd" {
	fps 30
}

$animation "a_draw" "v_ar1_anims\draw.smd" {
	fps 30
}

$animation "a_reload" "v_ar1_anims\reload.smd" {
	fps 30
}

$animation "a_holster" "v_ar1_anims\holster.smd" {
	fps 30
}

$sequence "idle1" {
	"a_idle1"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node 1
}

$sequence "AR1_primary_fire" {
	"a_AR1_primary_fire"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire2" {
	"a_AR1_primary_fire2"
	activity "ACT_VM_PRIMARYATTACK" 2
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire3" {
	"a_AR1_primary_fire3"
	activity "ACT_VM_PRIMARYATTACK" 3
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire4" {
	"a_AR1_primary_fire4"
	activity "ACT_VM_PRIMARYATTACK" 4
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire5" {
	"a_AR1_primary_fire5"
	activity "ACT_VM_PRIMARYATTACK" 5
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire6" {
	"a_AR1_primary_fire6"
	activity "ACT_VM_PRIMARYATTACK" 6
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire7" {
	"a_AR1_primary_fire7"
	activity "ACT_VM_PRIMARYATTACK" 7
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire8" {
	"a_AR1_primary_fire8"
	activity "ACT_VM_PRIMARYATTACK" 8
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire9" {
	"a_AR1_primary_fire9"
	activity "ACT_VM_PRIMARYATTACK" 9
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire10" {
	"a_AR1_primary_fire10"
	activity "ACT_VM_PRIMARYATTACK" 10
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire11" {
	"a_AR1_primary_fire11"
	activity "ACT_VM_PRIMARYATTACK" 11
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire12" {
	"a_AR1_primary_fire12"
	activity "ACT_VM_PRIMARYATTACK" 12
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire13" {
	"a_AR1_primary_fire13"
	activity "ACT_VM_PRIMARYATTACK" 13
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire14" {
	"a_AR1_primary_fire14"
	activity "ACT_VM_PRIMARYATTACK" 14
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire15" {
	"a_AR1_primary_fire15"
	activity "ACT_VM_PRIMARYATTACK" 15
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire16" {
	"a_AR1_primary_fire16"
	activity "ACT_VM_PRIMARYATTACK" 16
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire17" {
	"a_AR1_primary_fire17"
	activity "ACT_VM_PRIMARYATTACK" 17
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR1_primary_fire18" {
	"a_AR1_primary_fire18"
	activity "ACT_VM_PRIMARYATTACK" 18
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "fireempty" {
	"a_fireempty"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "altfire" {
	"a_altfire"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "draw" {
	"a_draw"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "reload" {
	"a_reload"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_Ar1.Reload" }
	fadein 0.2
	fadeout 0.2
	node 2
}

$sequence "holster" {
	"a_holster"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
}

