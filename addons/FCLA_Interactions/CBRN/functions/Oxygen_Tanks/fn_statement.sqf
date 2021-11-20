
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Recarga el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_backpackContainer = backpackContainer _player;



//Verificar si la mochila tiene el máximo de oxígeno.
if ((_backpackContainer getVariable ["FCLA_Backpack_Oxygen", FCLA_CBRN_Initial_Backpack_Oxygen]) >= 100) exitWith {
  _text = ["||||||||||", [0, 1, 0]] call ACE_Common_fnc_stringToColoredText;
  _picture = getText (configFile >> "CfgVehicles" >> (backpack _player) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;
};

//Verificar si el tanque tiene oxígeno.
if ((_target getVariable ["FCLA_Oxygen", 1000]) <= 0) exitWith {
  _text = ["||||||||||", "#808080"] call ACE_Common_fnc_stringToColoredText;
  _picture = getText (configFile >> "CfgVehicles" >> (typeOf _target) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;
};



//Animación inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_target", "_player"];
  _targetOxygen = _target getVariable ["FCLA_Oxygen", 1000];
  _backpackContainer = backpackContainer _player;

  _backpackContainer setVariable ["FCLA_Backpack_Oxygen", 100, true];
  _backpackContainer setVariable ["FCLA_Backpack_Current_Alert_Played", nil, true];
  _target setVariable ["FCLA_Oxygen", ((_targetOxygen - 100) max 0) min 1000, true];
  [_player, "quick_view", "%1 recargando suministro de oxígeno", [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
  [_player, "quick_view", "%1 recargo su suministro de oxígeno: 100%2", [name _player, "%"]] call ACE_Medical_Treatment_fnc_addToLog;

  _text = ["||||||||||", [0, 1, 0]] call ACE_Common_fnc_stringToColoredText;
  _picture = getText (configFile >> "CfgVehicles" >> (backpack player) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionRechargeOxygenCBRN;
};

[10, [_target, _player], _statementOnFinish, _statementOnFailure, "Recargando suministro de oxígeno...", _Condition, []] call ACE_Common_fnc_progressBar;
