
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Comprueba el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_item"];



//Animación inicial.
[_unit, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


//Barra de progreso para comprobar el oxígeno.
_statementOnFinish = {
  (_this select 0) params ["_unit"];
  _remainingOxygen = (backpackContainer _unit) getVariable ["FCLA_Backpack_Oxygen", 100];

  _coloredBars = round ((_remainingOxygen / 100) * 10);
  if ((_coloredBars == 0) && (_remainingOxygen > 0)) then {_coloredBars = 1;};
  _emptyBars = 10 - _coloredBars;
  _color = [((2 * (1 - _remainingOxygen / 100)) min 1), ((2 * _remainingOxygen / 100) min 1), 0];

  _string = "";
  for "_i" from 1 to _coloredBars do {_string = _string + "|";};
  _text = [_string, _color] call ACE_Common_fnc_stringToColoredText;

  _string = "";
  for "_i" from 1 to _emptyBars do {_string = _string + "|";};
  _text = composeText [_text, [_string, "#808080"] call ACE_Common_fnc_stringToColoredText];

  _picture = getText (configFile >> "CfgVehicles" >> (backpack _unit) >> "picture");
  [_text, _picture] call ACE_Common_fnc_displayTextPicture;
  [_unit, "quick_view", "%1 comprobando el suministro de oxígeno", [name _unit]] call ACE_Medical_Treatment_fnc_addToLog;
  [_unit, "quick_view", "%1 comprobo el suministro de oxígeno: %2%3", [name _unit, _remainingOxygen, "%"]] call ACE_Medical_Treatment_fnc_addToLog;
};

_statementOnFailure = {
  (_this select 0) params ["_unit"];
  [_unit, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_unit", "_item"];
  [_unit, _item] call FCLA_Interactions_fnc_conditionCheckOxygenCBRN;
};

[5, [_unit, _item], _statementOnFinish, _statementOnFailure, "Comprobando suministro de oxígeno...", _Condition, []] call ACE_Common_fnc_progressBar;