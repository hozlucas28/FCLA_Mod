
/* ----------------------------------------------------------------------------
Script: "\FCLA_Modules\CBRN\XEH_preInit.sqf"

Description:
    Preasigna valores de variables ademas de generar un eventhandler que
    crea las zonas contaminadas.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

[] spawn {
  Sleep 1;
  if (!(hasInterface) || (isNil "FCLA_CBRN_Configuration_Activated")) exitWith {};
  FCLA_CBRN_localZones = [];
  FCLA_CBRN_curThreat = 0;
  FCLA_CBRN_Last_Beep = -1;
  FCLA_CBRN_Chemical_Detector_Beep_Volume = 2;
  FCLA_CBRN_Chemical_Detector_Activated = true;



  //Creación de eventhandler.
  ["FCLA_Create_CBRN_Zone", {
    params ["_pos", "_threatLevel", "_size", "_fallOffArea"];
    private _trg = createTrigger ["EmptyDetector", _pos, false];
    _trg setVariable ["FCLA_CBRN_Zone", true];
    _trg enableDynamicSimulation false;
    _trg setVariable ["FCLA_CBRN_Active", true];
    _trg setVariable ["FCLA_CBRN_Threat_Level", _threatLevel];
    _trg setVariable ["FCLA_CBRN_Size", _size];
    _trg setVariable ["FCLA_CBRN_Fall_Of_Area", _fallOffArea];
    private _radius = _size + _fallOffArea;
    _trg setTriggerArea [_radius, _radius, 0, false, _radius];
    _trg setTriggerActivation ["ANYPLAYER", "PRESENT", true];
    _trg setTriggerStatements ["thisTrigger getVariable ['FCLA_CBRN_Active',false] && {this && {(vehicle ace_player) in thisList}}", "[thisTrigger, ace_player, true] call FCLA_Modules_fnc_addZone_CBRN", "[thisTrigger, ace_player, false] call FCLA_Modules_fnc_addZone_CBRN"];
    FCLA_CBRN_localZones pushBack _trg;
  }] call CBA_fnc_addEventhandler;
};
