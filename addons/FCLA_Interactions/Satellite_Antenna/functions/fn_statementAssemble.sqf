
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Ensambla la antena satélital.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];



//Animación inicial.
[_player, "ainvpknlmstpslaywrfldnon_medic", "SwitchMove"] call FCLA_Common_fnc_playAnimation;


_statementOnFinish = {
  (_this select 0) params ["_player"];
  _satelliteAntenna = createVehicle ["Satellite_Antenna_RF_3080", _player modelToWorld [0, 1, 0], [], 0, "CAN_COLLIDE"];
  playSound "FCLA_Weapon_Equipped";
  [_player, "FCLA_RF_3080"] call ACE_Common_fnc_useItem;
  [_player, _satelliteAntenna] call ACE_Dragging_fnc_startCarry;
};

_statementOnFailure = {
  (_this select 0) params ["_player"];
  [_player, "", 2] call ACE_Common_fnc_doAnimation;
};

_Condition = {
  (_this select 0) params ["_player"];
  [_player] call FCLA_Interactions_fnc_conditionAssembleSA;
};

[8, [_player], _statementOnFinish, _statementOnFailure, "Ensamblando antena...", _Condition, []] call ACE_Common_fnc_progressBar;
