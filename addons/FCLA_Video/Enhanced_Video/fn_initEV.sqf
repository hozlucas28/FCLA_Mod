
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_initEV

Description:
    Inicializa la configuración mejorada de video.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_nuller = [] spawn {
	if (!hasInterface) exitWith {};
	sleep 1;
	if (profileNamespace getVariable ['Enhanced_Video_Terrain', false]) then {setTerrainGrid 1;};
};
