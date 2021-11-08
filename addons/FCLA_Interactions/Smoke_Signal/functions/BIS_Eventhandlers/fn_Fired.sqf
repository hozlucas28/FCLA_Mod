
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * XXX.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
_compatibleSmokeMagazines = [
"1Rnd_Smoke_Grenade_shell", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell",
"1Rnd_SmokeYellow_Grenade_shell", "1Rnd_SmokePurple_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell",
"1Rnd_SmokeOrange_Grenade_shell", "3Rnd_Smoke_Grenade_shell", "3Rnd_SmokeRed_Grenade_shell",
"3Rnd_SmokeGreen_Grenade_shell", "3Rnd_SmokeYellow_Grenade_shell", "3Rnd_SmokePurple_Grenade_shell",
"3Rnd_SmokeBlue_Grenade_shell", "3Rnd_SmokeOrange_Grenade_shell", "rhs_mag_m713_Red",
"rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow",
"rhs_GRD40_Red", "rhs_GRD40_Green", "rhs_GRD40_White",
"CUP_1Rnd_Smoke_M203", "CUP_1Rnd_SmokeRed_M203", "CUP_1Rnd_SmokeGreen_M203",
"CUP_1Rnd_SmokeYellow_M203", "CUP_6Rnd_Smoke_GP25", "CUP_6Rnd_SmokeRed_GP25",
"CUP_6Rnd_SmokeGreen_GP25", "CUP_6Rnd_SmokeYellow_GP25", "CUP_1Rnd_SMOKE_GP25_M",
"CUP_1Rnd_SmokeRed_GP25_M", "CUP_1Rnd_SmokeGreen_GP25_M", "CUP_1Rnd_SmokeYellow_GP25_M"
];
if (!(_magazine in _compatibleSmokeMagazines) || !(_unit getVariable ["FCLA_Smoke_Signal", false])) exitWith {};



[{
  _projectilePos = getposatl _projectile;
  switch (typeOf _projectile) do
  {
  	case "G_40mm_Smoke": {[[_projectilePos,[1,1,1]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  	case "G_40mm_SmokeRed": {[[_projectilePos,[1,0.253,0]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  	case "G_40mm_SmokeBlue": {[[_projectilePos,[0.266,0.537,1]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  	case "G_40mm_SmokeGreen": {[[_projectilePos,[0.1,0.5,0.05]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  	case "G_40mm_SmokeOrange": {[[_projectilePos,[1,0.54,0.21]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  	case "G_40mm_SmokeYellow": {[[_projectilePos,[0.956,1,0.21]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  	case "G_40mm_SmokePurple": {[[_projectilePos,[0.8,0.432,0.8,1]],"\FCLA_Interactions\Smoke_Signal\scripts\blow.sqf"] remoteExec ["execVM"]};
  };
  deletevehicle _projectile;

}, _projectile, 1] call CBA_fnc_waitAndExecute;
