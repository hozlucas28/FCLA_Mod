
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede colocar una insignia de curso a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];


_arePlayers = ([_target, true] call ACE_common_fnc_isPlayer) && ([_player, true] call ACE_common_fnc_isPlayer);
_areFriendly = [side _target, side _player] call BIS_fnc_sideIsFriendly;
_isInstructor = (!isMultiplayer) || ((getPlayerUID _player) in FCLA_Commanders_UIDs) || ((getPlayerUID _player) in FCLA_Editors_UIDs) || ((getPlayerUID _player) in FCLA_Instructors_UIDs);
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
_notDisableByEditor = !(_player getVariable ['FCLA_Disable_Insignias', false]);
(FCLA_Mission_Type == "Training") && (_arePlayers) && (_areFriendly) && (_isInstructor) && (_isNotDragging) && (_isNotCarrying) && (_isNotSurrendering) && (_notDisableByEditor)
