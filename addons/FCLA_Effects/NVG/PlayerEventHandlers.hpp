
/********************************************************************************|
|                  CONTROLADORES DE EVENTOS (JUGADORES) - "NVG"                  |
|********************************************************************************/

//Modifica el color de la visión nocturna.
["visionMode", {
  params ["_unit", "_newVisionMode"];
  if ((!FCLA_Modify_Color_NVG) || (_newVisionMode != 1)) exitWith {[_unit, false] spawn FCLA_Effects_fnc_switchEffectNVG;};
  [_unit, true] spawn FCLA_Effects_fnc_switchEffectNVG;
}, true] call CBA_fnc_addPlayerEventHandler;


//Modifica el color de la visión nocturna.
["featureCamera", {
  params ["_unit", "_newCameraMode"];
  _visionMode = currentVisionMode _unit;
  if ((!FCLA_Modify_Color_NVG) || (_newCameraMode != "")) exitWith {[_unit, false] spawn FCLA_Effects_fnc_switchEffectNVG;};
  if (_visionMode == 1) then {[_unit, true] spawn FCLA_Effects_fnc_switchEffectNVG;};
}, true] call CBA_fnc_addPlayerEventHandler;
