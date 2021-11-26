
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna dos eventhandlers del tipo 'addPlayerEventHandler', que modifican el
 * color de la visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al cambiar el modo de visión.
["visionMode", {
  params ["_unit", "_newVisionMode"];
  if ((!FCLA_Modify_Color_NVG) || (_newVisionMode != 1)) exitWith {[_unit, false] spawn FCLA_Effects_fnc_switchEffectNVG;};
  [_unit, true] spawn FCLA_Effects_fnc_switchEffectNVG;
}, true] call CBA_fnc_addPlayerEventHandler;



//Al cambiar cámara (Zeus, arsenal, etc.).
["featureCamera", {
  params ["_unit", "_newCameraMode"];
  _visionMode = currentVisionMode _unit;
  if ((!FCLA_Modify_Color_NVG) || (_newCameraMode != "")) exitWith {[_unit, false] spawn FCLA_Effects_fnc_switchEffectNVG;};
  if (_visionMode == 1) then {[_unit, true] spawn FCLA_Effects_fnc_switchEffectNVG;};
}, true] call CBA_fnc_addPlayerEventHandler;
