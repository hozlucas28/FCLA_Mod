
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Provoca un efecto de conmocion en la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Provocar conmocion", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || !(_attachedObject in allPlayers)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UN JUGADOR"] call ZEN_Common_fnc_showMessage;};
  ["FCLA_Shellshock", [_attachedObject], _attachedObject] call CBA_fnc_targetEvent;
}, "\FCLA_Modules\Curator\data\Brain.paa"] call ZEN_Custom_Modules_fnc_Register;
