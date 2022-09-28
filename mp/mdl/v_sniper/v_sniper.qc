// Created by Crowbar 0.71

$modelname "weapons/v_sniper.mdl"

$bodygroup "studio"
{
	studio "sniper_reference.smd"
}


$contents "solid"

$illumposition -3.776 -30.934 -8.238

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\V_sniper\"

$attachment "muzzle" "Bip01 R Hand" 49.42 2.18 6.12 rotate 1.06 0.88 -0.68

$cbox 0 0 0 0 0 0

$bbox -2.422 -10.968 -15.456 64.29 3.416 -1.02

$definebone "Bip01" "" 0.134137 21.745049 43.181469 0 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980215 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 4.443615 -0.00964 0.000006 -0.000057 0.045607 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine" 12.111413 -0.011447 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000008 0.011441 1.352403 -78.540823 179.955158 -0.000802 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 6.078087 -0.000002 0 2.569601 -88.156487 -72.743762 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 13.446753 -0.000002 0 0 -3.959139 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 15.996998 -0.000005 0 0 0 -96.454354 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.885328 0.833277 -2.177876 40.000016 -0.038273 -91.559587 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.506964 0 0.000001 -0.000001 -7.999983 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.798348 0.000001 0 -0.000001 -6.499978 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.950304 -0.539876 -2.108868 9.000021 -0.007219 -0.046181 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.545797 0 0.000002 0 27.000006 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.667394 0.000001 0.000006 0 24.999981 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.89946 -0.475377 -1.170889 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.528216 0 -0.000001 0 19.000029 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.528214 0 0 0.000001 27.500029 0 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.89946 -0.431803 0.168228 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.506964 0 0.000002 0 24.50002 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.506964 0.000001 -0.000003 0.000001 19.499992 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.915634 -0.27802 1.402612 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.333085 -0.000001 -0.000005 0.000001 36.499991 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 1.159204 0 -0.000002 0.000001 12.499993 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000009 0.011449 -1.352403 78.540823 179.953614 -0.000802 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 6.078088 0.000001 0.000002 -2.569601 -88.156548 72.743762 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 13.446755 -0.000001 0 0 -3.959138 -0.000002 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 15.997 -0.000001 0 0 0 96.454354 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 1.885327 0.833277 2.177879 -40.000002 -0.038272 91.559587 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 1.506962 0 0 0.000001 -7.999994 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 0.798349 -0.000006 0 0.000001 -6.49999 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 3.950304 -0.539875 2.108873 -9.000016 -0.007219 0.046182 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.545798 0 0 0.000003 26.999999 0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.667398 -0.000002 0.000001 0.000001 24.999973 0.000005 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 3.899461 -0.475376 1.170894 0 0 0.045609 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.528215 0 -0.000001 0 19.000024 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.528216 0.000001 -0.000005 -0.000001 27.499965 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 3.899461 -0.431804 -0.168222 0 0 0.045609 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.506964 0 0 0 24.500015 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.506962 0 0.000006 -0.000001 19.499985 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 3.915634 -0.278019 -1.402606 0 0 0.045609 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 1.333083 0 0.000003 -0.000001 36.499981 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 1.159203 0 0.000002 -0.000001 12.499986 0.000001 0 0 0 0 0 0
$definebone "Dummy18" "Bip01 R Hand" -4.70089 1.283648 7.188921 0.655787 90.896813 91.064802 0 0 0 0 0 0
$definebone "Dummy19" "Dummy18" 0 0.000002 5.621232 0 0.000002 -0.000115 0 0 0 0 0 0
$definebone "Dummy14" "Bip01 R Hand" -14.432663 1.132935 7.330528 0.655787 90.896813 91.064802 0 0 0 0 0 0
$definebone "Dummy16" "Dummy14" 0 -0.000004 4.150282 0 0.000002 0 0 0 0 0 0 0

$animation "a_sniper_idle01" "v_sniper_anims\sniper_idle01.smd" {
	fps 30
	loop
}

$animation "a_sniper_fire" "v_sniper_anims\sniper_fire.smd" {
	fps 40
}

$animation "a_sniper_fire_dry" "v_sniper_anims\sniper_fire_dry.smd" {
	fps 30
}

$animation "a_sniper_draw" "v_sniper_anims\sniper_draw.smd" {
	fps 30
}

$animation "a_sniper_reload" "v_sniper_anims\sniper_reload.smd" {
	fps 35
}

$sequence "sniper_idle01" {
	"a_sniper_idle01"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "sniper_fire" {
	"a_sniper_fire"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 1 "1" }
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "sniper_fire_dry" {
	"a_sniper_fire_dry"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
}

$sequence "sniper_draw" {
	"a_sniper_draw"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "sniper_reload" {
	"a_sniper_reload"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
}

