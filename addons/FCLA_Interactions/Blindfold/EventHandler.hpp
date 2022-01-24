
/********************************************************************************|
|                       CONTROLADORES DE EVENTOS - "VENDA"                       |
|********************************************************************************/

//Devuelve los anteojos a la unidad cuando es liberada.
["ACE_captiveStatusChanged", {
	params ["_unit", "_state"];
	_savedGoggles = _unit getVariable ["FCLA_Saved_Goggles", ""];
  _currentGoggles = goggles _unit;
	_compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
  if ((_state) || !(_currentGoggles in _compatibleBandages) || (_savedGoggles == "")) exitWith {};
  [_unit, _unit] spawn FCLA_Interactions_fnc_statementOffBlindfold;
}] call CBA_fnc_addEventHandler;
