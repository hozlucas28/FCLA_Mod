
/********************************************************************************|
|                  CONTROLADORES DE EVENTOS (JUGADORES) - "NVG"                  |
|********************************************************************************/

if (hasInterface) then {
  //Modifica el color de la vision nocturna.
  ["visionMode", {
    params ["_unit", "_newVisionMode"];
    if ((!FCLA_Modify_Color_NVG) || (_newVisionMode != 1)) exitWith {[_unit, false] call FCLA_Effects_fnc_switchEffectNVG;};
    [_unit, true] call FCLA_Effects_fnc_switchEffectNVG;
  }, false] call CBA_fnc_addPlayerEventHandler;


  //Modifica el color de la vision nocturna.
  ["featureCamera", {
    params ["_unit", "_newCameraMode"];
    _visionMode = currentVisionMode _unit;
    if ((!FCLA_Modify_Color_NVG) || (_newCameraMode != "")) exitWith {[_unit, false] call FCLA_Effects_fnc_switchEffectNVG;};
    if (_visionMode == 1) then {[_unit, true] call FCLA_Effects_fnc_switchEffectNVG;};
  }, false] call CBA_fnc_addPlayerEventHandler;
};
