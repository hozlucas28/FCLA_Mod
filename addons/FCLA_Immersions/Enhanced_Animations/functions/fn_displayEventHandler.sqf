
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'displayAddEventHandler' para que
 * se cancele la animación 'posición táctica (arriba/abajo)' cuando se
 * preciona el click derecho/izquierdo del mouse.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Al hacer click con el mouse.
[{time > 1}, {
  (findDisplay 46) displayAddEventHandler ["MouseButtonDown", {
    _unit = call CBA_fnc_currentUnit;
    _severalConditions = [_unit, [4, 6, 7, 8, 10, 11, 12, 14, 16]] call FCLA_Common_fnc_severalConditions;
    _noInTacticalAnimation = !(_unit getVariable ["FCLA_Tactical_Position", false]);
    if ((visibleMap) || (_severalConditions) || (_noInTacticalAnimation)) exitWith {};
    _unit setVariable ["FCLA_Tactical_Position", nil, true];
    [_unit, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  }];
}] call CBA_fnc_waitUntilAndExecute;
