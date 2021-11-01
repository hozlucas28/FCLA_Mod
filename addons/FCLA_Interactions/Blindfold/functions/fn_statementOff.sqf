
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Quitar venda de los ojos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_currentGoggles = goggles _target;
_originalGoggles = _target getVariable ["FCLA_Saved_Goggles", ""];
_compatibleBandages = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
_compatibleItemsBandages = ["FCLA_G_Blindfold_01_Black_F", "FCLA_G_Blindfold_01_White_F"];



//Quitar venda.
removeGoggles _target;
[_player, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
if (_currentGoggles == (_compatibleBandages select 0)) then {
	[_player, _compatibleItemsBandages select 0, "", -1] call ACE_Common_fnc_addToInventory;
} else {
	[_player, _compatibleItemsBandages select 1, "", -1] call ACE_Common_fnc_addToInventory;
};


//Devolver gafas.
if (_originalGoggles == "") exitWith {};
_target addGoggles _originalGoggles;
_target setVariable ["FCLA_Saved_Goggles", nil, true];
