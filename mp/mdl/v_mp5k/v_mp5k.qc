// Created by Crowbar 0.71

$modelname "weapons/v_mp5k.mdl"

$bodygroup "studio"
{
	studio "Smg1_reference.smd"
}
$bodygroup "studio"
{
	studio "arm_l.smd"
}
$bodygroup "studio"
{
	studio "arm_r.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 19.66 -2.06 -11.12

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\V_smg1\"

$attachment "muzzle" "ValveBiped.muzzle" 0 -0.5 0 rotate 0 0 0
$attachment "1" "ValveBiped.eject" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 5.15 -10.29 -20.15 34.17 6.17 -2.08

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_Spine2" 0 0 -8.4 11.64 0 0 ""
$hbox 0 "ValveBiped.Bip01_Spine4" 0 0 0 2.03 0 1.94 ""
$hbox 0 "ValveBiped.Bip01_L_UpperArm" -1.38 -3.58 -3.09 11.69 -3.58 2.85 ""
$hbox 0 "ValveBiped.Bip01_L_Forearm" -2.02 -3.14 -3.13 11.78 -3.14 2.72 ""
$hbox 0 "ValveBiped.Bip01_L_Hand" 0 -1.94 -2.1 4.3 -1.94 1.89 ""
$hbox 0 "ValveBiped.Bip01_L_Finger3" 0 -0.78 -0.63 1.83 -0.78 0.44 ""
$hbox 0 "ValveBiped.Bip01_L_Finger0" 0 -0.46 -1.28 2.2 -0.46 0.47 ""
$hbox 0 "ValveBiped.Bip01_L_Finger01" 0 -0.33 -0.65 1.27 -0.33 0.36 ""
$hbox 0 "ValveBiped.base" -3.79 -6.41 -15.49 1.69 -6.41 13.89 ""
$skipboneinbbox

$definebone "ValveBiped.Bip01" "" -0.000005 -9.614098 38.566917 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01" 0.000005 3.345129 -2.981901 4.944225 89.999982 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 4.018345 0 0 0 -1.675443 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 3.518576 0 0 0 5.74883 0 0 0 0 0 0 0
$definebone "ValveBiped.base" "ValveBiped.Bip01_Spine2" 11.636151 20.498386 -8.400481 -89.999982 -89.129201 0 0 0 0 0 0 0
$definebone "ValveBiped.clip" "ValveBiped.base" 0.037138 -5.104295 -1.708169 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.eject" "ValveBiped.base" -0.488877 2.223238 -1.367221 0 -179.999964 179.999964 0 0 0 0 0 0
$definebone "ValveBiped.muzzle" "ValveBiped.base" 0.018969 0.548842 13.887946 -89.999982 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" 1.534434 3.343186 -1.695995 -10.250101 89.999982 90.000037 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 2.033351 1.000767 1.937661 -73.71188 168.619189 91.480692 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 6.028143 -0.000001 0.000001 2.738337 -33.527944 -90.504986 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 11.692567 0.000095 0.00001 0.000001 -3.457801 -0.000401 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 11.481674 -0.000157 -0.000028 -6.108645 2.53127 90.136866 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.859707 -0.142412 -1.191977 8.682546 -50.431573 -26.82182 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 1.312559 -0.000005 0.000007 -0.000231 -25.194273 -0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.729364 -0.000004 0.000002 -0.000174 -13.99759 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.942333 0.046755 -0.431444 4.194166 -46.466361 -8.69641 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.539097 0.000007 -0.000005 0.000344 -14.19732 -0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 1.196324 -0.000007 0.000001 -0.000401 -24.683711 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.883692 -0.04678 0.431442 1.250996 -33.682296 4.921822 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.71957 -0.000005 0.000007 0.315986 -20.997639 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 1.209175 -0.000001 0.000003 0.177101 -12.398402 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.859859 -0.137959 1.332465 -2.449509 -30.465536 20.308488 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.719429 0.000007 -0.000008 0.233711 -20.798652 -0.000226 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 1.099663 0.000001 0.000002 0.148684 -13.999192 0.000232 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 0.80605 -0.348926 1.321258 -38.916157 -45.196055 -70.054634 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.789785 -0.000001 -0.000002 0.000112 13.093344 0.000683 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 1.207006 0 0.000001 0.000056 20.790575 -0.000692 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 2.033358 1.00077 -1.937611 73.712085 168.618874 -95.596441 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 6.028145 -0.000002 -0.000003 -0.461919 -33.623799 93.935175 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 11.692567 0.000019 0.000001 0.000001 -3.459004 0.000229 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 11.481705 0.000012 0.000002 6.107677 2.53213 -89.664408 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.85968 -0.132547 1.19311 -9.05663 -50.35251 26.713244 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 1.31256 -0.000005 -0.000001 0.000115 -25.191408 0.000174 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.729361 0.000001 -0.000002 0.000173 -13.996042 0.000002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.942306 0.050354 0.431044 -4.537253 -46.420926 8.598779 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.539101 -0.000001 0.000001 -0.000173 -14.196065 0.000113 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 1.196321 0 -0.000002 0.000113 -24.680911 -0.000173 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.883662 -0.050297 -0.431042 -1.512666 -33.672443 -4.921994 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.71958 0.000013 0.000006 -0.456762 -20.995127 0.000058 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 1.209181 0.000009 0.000006 -0.256055 -12.397033 0.000115 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.859841 -0.14891 -1.331283 2.209956 -30.481348 -20.306825 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.719428 0.000005 0.000008 -0.378841 -20.796592 0.000057 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 1.099664 0.000009 0.000008 -0.241331 -13.997994 0.000229 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 0.806025 -0.359832 -1.318335 38.596152 -45.467179 69.981408 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.789783 -0.000008 -0.000009 -0.000057 13.095009 -0.000117 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 1.207002 0 -0.000002 -0.000113 20.79327 0.00017 0 0 0 0 0 0

$animation "a_idle01" "v_smg1_anims\idle01.smd" {
	fps 30
	loop
}

$animation "a_fire01" "v_smg1_anims\fire01.smd" {
	fps 40
}

$animation "a_altfire" "v_smg1_anims\altfire.smd" {
	fps 30
}

$animation "a_draw" "v_smg1_anims\draw.smd" {
	fps 30
}

$animation "a_reload" "v_smg1_anims\reload.smd" {
	fps 30
}

$animation "a_dryfire" "v_smg1_anims\dryfire.smd" {
	fps 30
}

$sequence "idle01" {
	"a_idle01"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
}

$sequence "fire01" {
	"a_fire01"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "fire02" {
	"a_fire01"
	activity "ACT_VM_RECOIL1" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "fire03" {
	"a_fire01"
	activity "ACT_VM_RECOIL2" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "fire04" {
	"a_fire01"
	activity "ACT_VM_RECOIL3" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "altfire" {
	"a_altfire"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
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
	{ event 5004 1 "Weapon_Smg1.Reload" }
	fadein 0.2
	fadeout 0.2
}

$sequence "dryfire" {
	"a_dryfire"
	activity "ACT_VM_DRYFIRE" 1
	fadein 0.2
	fadeout 0.2
	snap
}

