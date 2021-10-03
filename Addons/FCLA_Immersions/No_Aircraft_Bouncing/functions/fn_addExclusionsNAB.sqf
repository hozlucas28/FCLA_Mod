
/* ----------------------------------------------------------------------------
Function: FCLA_Immersions_fnc_addExclusionsNAB

Description:
    Incluye a las aeronaves con la propiedad 'FCLA_NAB_isExcluded' a las
		aeronaves excluidas del NAB, definidas en el addon option 'Excluir clases'.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_classnamesToExclude", []]];
_NABExclusions = [];


{
	if (getNumber (_x >> "FCLA_NAB_isExcluded") > 0) then {_NABExclusions pushBack toLower configName _x;};
} forEach configProperties [configFile >> "CfgVehicles", "isClass _x", false];
uiNamespace setVariable ["FCLA_NAB_Exclusions", (_classnamesToExclude + _NABExclusions), true];
