
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Desactiva el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentBackpack = backpack _player;
_backpackContainer = backpackContainer _player;
_remainingBackpackOxygen = _backpackContainer getVariable ["FCLA_Backpack_Oxygen", FCLA_CBRN_Initial_Backpack_Oxygen];



//Si la mochila se quedo sin oxígeno.
if (_remainingBackpackOxygen <= 0) exitWith {
  _backpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
  [_player, "quick_view", "%1 se quedo sin suministro de oxígeno", [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
};


//Quitar manguera.
[_player, false] spawn FCLA_Interactions_fnc_showHoseCBRN;
[_player, "FCLA_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;


//Detener consumo de oxígeno.
_backpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
[_player, "quick_view", "%1 desactivo el suministro de oxígeno", [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
