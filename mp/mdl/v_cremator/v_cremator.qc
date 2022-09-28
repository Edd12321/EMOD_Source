// Created by Crowbar 0.71

$modelname "weapons/v_cremator.mdl"

$bodygroup "studio"
{
	studio "v_Cremator_reference.smd"
}
$bodygroup "hands"
{
	studio "hev.smd"
}


$contents "solid"

$illumposition -7.247 -45.843 -13.515

$cdmaterials "models\Weapons\V_hand\\"
$cdmaterials "models\Weapons\V_Immolator\\"

$attachment "0" "muzzle" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 18.534 -19.065 -19.219 75.546 3.12 -6.408

$definebone "Bip01" "" -13.101732 -12.071518 43.181469 0 -89.999982 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980215 -90.002222 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 4.443616 -0.009641 0.000005 -0.353171 0.045264 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine" 12.111174 -0.011366 -0.074641 0 0 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" -0.008324 0.011447 -1.352377 78.187716 179.955964 0.001261 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 6.078084 0 0.000001 -2.568169 -88.156774 72.74381 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 13.446773 0.000343 0.000049 0.000516 -3.959081 0.000171 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 15.996996 0.00037 0.000198 -0.000974 -0.000343 96.453951 0 0 0 0 0 0
$definebone "Dummy14" "Bip01 R Hand" -2.696754 7.324316 -1.920831 0.655578 90.896376 1.066447 0 0 0 0 0 0
$definebone "muzzle" "Bip01 R Hand" 35.019257 7.487988 -2.080857 -1.064139 -179.116329 90.655653 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.003905 0.011446 1.352395 -78.705609 179.95412 0.00063 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 6.078086 0.00001 0 2.570002 -88.156261 -72.743769 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 13.446751 -0.000125 -0.000002 0.000115 -3.958852 0 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 15.99701 -0.000217 0.000035 0.000344 -0.000573 -96.454074 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.885338 0.833251 -2.177892 40.000135 -0.038731 -91.559799 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.506974 0 -0.000005 0.000114 -7.999804 0.000058 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.798358 -0.000006 0 -0.000001 -6.500373 -0.000056 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.950311 -0.539917 -2.108882 8.999562 -0.007391 -0.046697 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.545792 -0.000008 -0.000018 0.000001 26.999485 0.000573 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.667395 0.000004 -0.000013 0.000001 25.00055 -0.000172 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.899468 -0.475413 -1.1709 -0.000516 -0.000114 -0.046124 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.528219 -0.00001 -0.000019 0.000172 18.999853 0.000515 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.528217 -0.000003 -0.000008 0.000115 27.499798 0.000286 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.899459 -0.431834 0.168213 -0.000516 -0.000057 -0.046181 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.506957 -0.00001 -0.000012 -0.000114 24.499733 0.000228 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.506962 -0.000001 -0.000019 0.000115 19.499874 0.000458 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.91563 -0.278044 1.402594 -0.000516 -0.000114 -0.046181 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.333089 -0.000008 -0.000017 -0.000114 36.499991 0.000343 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 1.1592 -0.000006 -0.000021 0.000173 12.499475 0.000572 0 0 0 0 0 0

$animation "a_Idle" "v_cremator_anims\a_Idle.smd" {
	fps 30
	loop
}

$animation "a_Draw" "v_cremator_anims\a_Draw.smd" {
	fps 30
}

$animation "a_Fire" "v_cremator_anims\a_Fire.smd" {
	fps 30
	loop
}

$sequence "Idle" {
	"a_Idle"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "Draw" {
	"a_Draw"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "Fire" {
	"a_Fire"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
}

