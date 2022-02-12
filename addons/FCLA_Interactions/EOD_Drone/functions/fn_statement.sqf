
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Desactiva la mina.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];



//Barra de progreso para desactivar la mina.
_statementOnFinish = {
  (_this select 0) params ["_target"];
  _vehicle = vehicle _target;
  _headRealPosition = _vehicle modelToWorld (_vehicle selectionPosition "arm3");
  _allMines = (nearestObjects [_headRealPosition, [], 5, true]) select {_x in allMines};
  _areNotNearMines = (count _allMines) <= 0;
  if (_areNotNearMines) exitWith {};

  _mine = _allMines select 0;
  _mineItem = getText (configFile >> 'CfgAmmo' >> typeOf _mine >> 'defaultMagazine');

  deleteVehicle _mine;
  _groundWeaponHolder = createVehicle ["GroundWeaponHolder", getPos _mine, [], 0, "CAN_COLLIDE"];
  _groundWeaponHolder addMagazineCargoGlobal [_mineItem, 1];
};

_Condition = {
  (_this select 0) params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionEODDron;
};

[5, [_target, _player], _statementOnFinish, {}, "Desactivando explosivo...", _Condition, []] call ACE_Common_fnc_progressBar;
