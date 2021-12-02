
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_createZone_CBRN

Description:
		Crea una zona contaminada. Función llamada desde el módulo 'Crear zona (CBRN)'.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!_isActivated) exitWith {};



[_module] spawn {
  Sleep 1;
  if (isNil "FCLA_CBRN_Configuration_Activated") exitWith {
    [] spawn {
      Sleep 1;
      ["Error! el módulo 'Crear zona (CBRN)' necesita del 'Configuración (CBRN)' módulo para funcionar correctamente.", "Módulo - Crear zona (CBRN):", true, "Cerrar"] remoteExec ["BIS_fnc_guiMessage", 0, true];
    };
  };

  //Obtener valores.
  _threatLevel = round ((_this#0) getVariable "CBRN_CZ_threatLevel");
  _radiusMaxThreatLevel = (_this#0) getVariable "CBRN_CZ_Radius_maxThreatLevel";
  _radius = (_this#0) getVariable "CBRN_CZ_Radius";
  _pos = getPos (_this#0);

  waitUntil {!(isNil "FCLA_CBRN_Simulation_Range")};
  ["FCLA_Create_CBRN_Zone", [_pos, _threatLevel, _radiusMaxThreatLevel, _radius]] call CBA_fnc_globalEventJip;
  if ((_radiusMaxThreatLevel + _radius) > FCLA_CBRN_Simulation_Range) then {
      FCLA_CBRN_Simulation_Range = _radiusMaxThreatLevel + _radius + 50;
      publicVariable "FCLA_CBRN_Simulation_Range";
  };
}
