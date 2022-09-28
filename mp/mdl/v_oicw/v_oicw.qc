// Created by Crowbar 0.71

$modelname "weapons/v_oicw.mdl"

$bodygroup "studio"
{
	studio "AR2_reference.smd"
}


$contents "solid"

$illumposition -7.023 -37.755 -13.341

$cdmaterials "models\weapons\V_hand\"
$cdmaterials "models\weapons\V_ar2\"

$attachment "muzzle" "Bip01 R Hand" 32 3 8.5 rotate 0 0 0
$attachment "1" "Bip01 R Hand" 10 2 6 rotate -25 -90 0

$cbox 0 0 0 0 0 0

$bbox 13.92 -15.636 -24.778 61.59 1.591 -1.904

$definebone "Bip01" "" 0.134139 -15.777153 43.181469 0 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980215 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 4.443617 -0.00964 0.000006 -0.000057 0.045607 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine" 12.111413 -0.011446 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000012 0.011442 1.352404 -78.540823 179.955158 -0.000802 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 6.078088 0 -0.000004 2.569601 -88.156487 -72.743762 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 13.446752 0.000002 0 0 -3.959139 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 15.997001 0.000005 -0.000001 0 0 -96.454354 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.885324 0.833277 -2.177878 40.000016 -0.038273 -91.559587 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.506964 0.000002 0 -0.000001 -7.999983 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.798348 0 0 -0.000001 -6.499978 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.950299 -0.539876 -2.10887 9.000021 -0.007219 -0.046181 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.545799 0 0.000004 0 27.000006 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.667399 -0.000003 0.000002 0 24.999981 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.89946 -0.475377 -1.17089 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.528211 -0.000001 0 0 19.000029 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.528216 0.000001 0.000002 0.000001 27.500029 0 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.899458 -0.431804 0.168226 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.506967 0 0 0 24.50002 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.506958 0.000002 -0.000005 0.000001 19.499992 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.91563 -0.27802 1.40261 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.333083 -0.000001 -0.000003 0.000001 36.499991 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 1.159203 -0.000002 -0.000004 0.000001 12.499993 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000013 0.011449 -1.352403 78.540823 179.953614 -0.000802 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 6.078087 -0.000001 0 -2.569601 -88.156548 72.743762 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 13.446752 -0.000003 0 0 -3.959138 -0.000002 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 15.996999 0.000004 0 0 0 96.454354 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 1.885329 0.833277 2.177874 -40.000002 -0.038272 91.559587 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 1.506968 0.000003 0 0.000001 -7.999994 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 0.798349 0.000001 0 0.000001 -6.49999 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 3.950306 -0.539876 2.108868 -9.000016 -0.007219 0.046182 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.545795 0 -0.000003 0.000003 26.999999 0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.667399 -0.000001 0.000002 0.000001 24.999973 0.000005 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 3.89946 -0.475376 1.170889 0 0 0.045609 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.528219 0 0.000002 0 19.000024 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.528216 0.000002 -0.000005 -0.000001 27.499965 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 3.899458 -0.431803 -0.168227 0 0 0.045609 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.50696 0 -0.000004 0 24.500015 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.506964 -0.000003 0.000006 -0.000001 19.499985 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 3.915635 -0.278019 -1.402611 0 0 0.045609 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 1.33308 0 -0.000001 -0.000001 36.499981 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 1.159204 0.000002 -0.000002 -0.000001 12.499986 0.000001 0 0 0 0 0 0
$definebone "Dummy15" "Bip01 R Hand" 11.995243 1.423876 2.193766 -1.064753 -179.115414 90.655885 0 0 0 0 0 0
$definebone "Dummy14" "Bip01 R Hand" 17.618814 2.894397 6.858002 -1.064753 -179.115414 90.655885 0 0 0 0 0 0

$animation "a_AR2_idle" "v_ar2_anims\AR2_idle.smd" {
	fps 30
	loop
}

$animation "a_AR2_primary_fire" "v_ar2_anims\AR2_primary_fire.smd" {
	fps 30
}

$animation "a_AR2_primary_fire2" "v_ar2_anims\AR2_primary_fire2.smd" {
	fps 30
}

$animation "a_AR2_primary_fire3" "v_ar2_anims\AR2_primary_fire3.smd" {
	fps 30
}

$animation "a_AR2_primary_fire4" "v_ar2_anims\AR2_primary_fire4.smd" {
	fps 30
}

$animation "a_AR2_primary_dry" "v_ar2_anims\AR2_primary_dry.smd" {
	fps 30
}

$animation "a_AR2_secondary_fire" "v_ar2_anims\AR2_secondary_fire.smd" {
	fps 30
}

$animation "a_AR2_draw" "v_ar2_anims\AR2_draw.smd" {
	fps 60
}

$animation "a_AR2_reload" "v_ar2_anims\AR2_reload.smd" {
	fps 25
}

$animation "a_nothreatidle" "v_ar2_anims\nothreatidle.smd" {
	fps 30
	loop
}

$animation "a_nothreattoidle" "v_ar2_anims\nothreattoidle.smd" {
	fps 30
}

$animation "a_idletonothreat" "v_ar2_anims\idletonothreat.smd" {
	fps 30
}

$animation "a_attack1" "v_ar2_anims\attack1.smd" {
	fps 30
	walkframe 3 LX
}

$animation "a_attack2" "v_ar2_anims\attack2.smd" {
	fps 30
	walkframe 6 LX
}

$sequence "AR2_idle" {
	"a_AR2_idle"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "AR2_primary_fire" {
	"a_AR2_primary_fire"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_primary_fire2" {
	"a_AR2_primary_fire2"
	activity "ACT_VM_RECOIL1" 1
	{ event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_primary_fire3" {
	"a_AR2_primary_fire3"
	activity "ACT_VM_RECOIL2" 1
	{ event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_primary_fire4" {
	"a_AR2_primary_fire4"
	activity "ACT_VM_RECOIL3" 1
	{ event AE_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 6001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_primary_dry" {
	"a_AR2_primary_dry"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_secondary_fire" {
	"a_AR2_secondary_fire"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event 5001 0 "2" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_draw" {
	"a_AR2_draw"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "AR2_reload" {
	"a_AR2_reload"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "nothreatidle" {
	"a_nothreatidle"
	fadein 0.2
	fadeout 0.2
}

$sequence "nothreattoidle" {
	"a_nothreattoidle"
	fadein 0.2
	fadeout 0.2
}

$sequence "idletonothreat" {
	"a_idletonothreat"
	fadein 0.2
	fadeout 0.2
}

$sequence "attack1" {
	"a_attack1"
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event 5001 0 "0" }
	{ event 3007 0 "" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
}

$sequence "attack2" {
	"a_attack2"
	activity "ACT_RANGE_ATTACK_AR2_GRENADE" 1
	{ event 3012 0 "" }
	fadein 0.2
	fadeout 0.2
}

