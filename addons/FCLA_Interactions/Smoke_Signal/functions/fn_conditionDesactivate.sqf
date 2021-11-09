
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede desactivar la señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];
_currentMagazine = currentMagazine _player;
#include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"


_isNotOnMap = !visibleMap;
_isActivated = _player getVariable ["FCLA_Smoke_Signal", false];
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_hasSmokeMagazine = _currentMagazine in _compatibleSmokeMagazines;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
(FCLA_Smoke_Signal_Allowed) && (_isNotOnMap) && (_isActivated) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_hasSmokeMagazine) && (_isNotSurrendering)
