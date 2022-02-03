
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Desarma la antena satelital.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];



//Animacion inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_target", "_player"];
  _antennaPos = getPosATL _target;
  _weaponHolder = createVehicle ["WeaponHolder_Single_F", _antennaPos, [], 0, "CAN_COLLIDE"];
  deleteVehicle _target;
  playSound "FCLA_Weapon_Unequipped";
  _weaponHolder setPosATL _antennaPos;
  _weaponHolder addItemCargoGlobal ["FCLA_RF_3080", 1];
};

_statementOnFailure = {
  (_this select 0) params ["_target", "_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_target", "_player"];
  [_target, _player] call FCLA_Interactions_fnc_conditionDisassembleSA;
};

[8, [_target, _player], _statementOnFinish, _statementOnFailure, "Desarmando antena...", _Condition, []] call ACE_Common_fnc_progressBar;
