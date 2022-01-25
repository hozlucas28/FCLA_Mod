
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Colocar venda en los ojos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_currentGoggles = goggles _target;
_compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
_compatibleItemsBandages = ["FCLA_G_Blindfold_01_Black_F", "FCLA_G_Blindfold_01_White_F"];



//Colocar venda.
removeGoggles _target;
if ([_player, _compatibleItemsBandages select 0] call BIS_fnc_hasItem) then {
  _target addGoggles (_compatibleBandages select 0);
  [_player, _compatibleItemsBandages select 0] call ACE_Common_fnc_useItem;
  [_player, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  [_target, "FCLA_Gagged_Man", 4, 25, false] call FCLA_Common_fnc_globalSay3D;
} else {
  _target addGoggles (_compatibleBandages select 1);
  [_player, _compatibleItemsBandages select 1] call ACE_Common_fnc_useItem;
  [_player, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  [_target, "FCLA_Gagged_Man", 4, 25, false] call FCLA_Common_fnc_globalSay3D;
};


//Guardar gafas.
if (_currentGoggles == "") exitWith {};
_target setVariable ["FCLA_Saved_Goggles", _currentGoggles, true];
