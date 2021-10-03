
/* ----------------------------------------------------------------------------
Script: "\FCLA_Interactions\Smoke_Signal\scripts\signal.sqf"

Description:
    Llama de forma global al script "x\blow.sqf", enviando como variables el
		proyectil, su posición y tipo de color. Finalizando el script se elimina
		el proyectil.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_projectile"];



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
