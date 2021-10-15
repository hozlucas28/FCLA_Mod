
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Asigna un eventhandler del tipo 'displayAddEventHandler' que se activara
 * cada vez que se mueva la rueda del mouse.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

[{time > 1}, {
  (findDisplay 46) displayAddEventHandler ["MouseZChanged", {
    params ["_displayOrControl", "_scroll"];
    [_scroll] spawn FCLA_Immersions_fnc_initPOD;
  }];
}] call CBA_fnc_waitUntilAndExecute;
