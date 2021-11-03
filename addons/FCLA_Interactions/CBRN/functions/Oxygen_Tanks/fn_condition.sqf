
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se recargar el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_backpack = backpack _player;
_backpackContainer = backpackContainer _player;


_notInStairs = !(_player getVariable ["FCLA_inStairs", false]);
_isAlive = alive _target;
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_notInCameraMode = !(_player in (call ACE_Spectator_fnc_players));
_isCBRNActivated = !(isNil "FCLA_CBRN_Activated");
_isNotOxygenFull = (_backpackContainer getVariable ["FCLA_Backpack_Oxygen", 100]) < 100;
_isTouchingGround = isTouchingGround _player;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_hasOxygenRemaining = (_target getVariable ["FCLA_Oxygen_Supply", 1000]) > 0;
_haveCompatibleBackpack = _backpack in FCLA_Backpacks_With_Oxygen;
(_notInStairs) && (_isAlive) && (_isNotSwimming) && (_isNotDragging) && (_isNotCarrying) &&(_notInCameraMode) && (_isCBRNActivated) && (_isNotOxygenFull) && (_isTouchingGround) && (_isNotSurrendering) && (_hasOxygenRemaining) && (_haveCompatibleBackpack)
