// Created by Crowbar 0.71

$modelname "Weapons/v_Physics.mdl"

$bodygroup "studio"
{
	studio "Physics_reference_lod0.smd"
}


$contents "solid"

$illumposition -11.016 -48.934 -11.337

$cdmaterials "Models\Weapons\v_physics_gun\\"
$cdmaterials "models\Weapons\V_hand\\"

$attachment "0" "muzzle" 0 12 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 22.314 -23.358 -21.609 75.564 1.327 -1.063

$hboxset "default"
$hbox 0 "Bip01 L Forearm" 0 -3.035958 -2.879772 15.996998 3.010704 2.457477 ""
$hbox 0 "Bip01 L Hand" 0 -1.78318 -2.909699 4.806381 17.776594 2.447161 ""
$hbox 0 "Bip01 L Finger0" 0 -0.71799 -1.63253 1.506958 0.934983 0.830752 ""
$hbox 0 "Bip01 L Finger01" -0.876646 -0.687521 -0.664787 1.03474 0.751215 0.695046 ""
$hbox 0 "Bip01 L Finger1" 0 -0.821535 -0.625329 2.124263 0.770541 0.706037 ""
$hbox 0 "Bip01 L Finger2" 0 -0.925969 -0.515055 2.325402 0.630242 0.837631 ""
$hbox 0 "Bip01 L Finger31" 0 -0.677995 -0.611816 1.627932 0.358374 0.529782 ""
$hbox 0 "Bip01 L Finger4" 0 -0.882738 -0.560181 1.697775 0.402007 0.611231 ""
$hbox 0 "Dummy15" -7.15804 -8.419433 -14.498471 14.290165 10.655806 32.095074 ""
$hbox 0 "Dummy14" -5.643439 -5.624474 -9.122003 5.630161 5.649122 18.862991 ""

$definebone "Bip01" "" -6.325857 -11.595882 43.181469 0 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980215 -89.999927 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 4.443615 -0.009641 0.000006 -0.000057 0.045607 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine" 12.111417 -0.011447 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000006 0.011442 1.352404 -78.540823 179.955158 -0.000802 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 6.07809 0.000001 -0.000002 2.569601 -88.156487 -72.743762 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 13.446749 0.000004 0 0 -3.959138 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 15.996997 -0.000007 0 0 0 -96.454354 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 1.885324 0.833277 -2.177878 40.000006 -0.038273 -91.559587 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.506959 -0.000003 0 0 -7.999986 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.798348 -0.000003 0 0 -6.499982 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.950298 -0.539876 -2.108865 9.000018 -0.007219 -0.046181 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.545798 0 0.000001 -0.000002 27.000004 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.667398 0 -0.000005 -0.000001 24.99998 -0.000003 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.899455 -0.475376 -1.170885 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.528213 0 -0.000001 0 19.000024 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.528216 0.000001 -0.000002 0 27.50002 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.899453 -0.431804 0.168231 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.506968 0 0.000002 0 24.500017 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.50696 0.000003 -0.000002 0 19.499987 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.915634 -0.278019 1.402613 0 0 -0.045608 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.333084 0 0.000001 0 36.499988 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 1.159204 0.000002 0.000001 0 12.499988 -0.000001 0 0 0 0 0 0
$definebone "Dummy15" "Bip01 L Hand" 0.73535 17.776592 2.447158 0.655749 -89.103014 -88.935197 0 0 0 0 0 0
$definebone "Dummy14" "Dummy15" -0.000001 -0.000001 12.821279 0 -0.000001 0 0 0 0 0 0 0
$definebone "muzzle" "Dummy14" 0.000317 0.00026 18.862991 0 -0.000001 -89.999982 0 0 0 0 0 0
$definebone "Dummy16" "Dummy15" 4.176646 1.26671 -7.999434 0 -0.000001 -139.199979 0 0 0 0 0 0

$animation "a_idle1" "v_Physics_anims\idle1.smd" {
	fps 30
	loop
}

$animation "a_draw" "v_Physics_anims\draw.smd" {
	fps 30
}

$animation "a_fire" "v_Physics_anims\fire.smd" {
	fps 30
	loop
}

$animation "a_fire2" "v_Physics_anims\fire2.smd" {
	fps 30
	loop
}

$animation "a_winddown" "v_Physics_anims\winddown.smd" {
	fps 30
}

$sequence "idle1" {
	"a_idle1"
	activity "ACT_VM_IDLE" 1
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

$sequence "fire" {
	"a_fire"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "fire2" {
	"a_fire2"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "winddown" {
	"a_winddown"
	fadein 0.2
	fadeout 0.2
}

