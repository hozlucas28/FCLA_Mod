
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si se puede activar la señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];
_currentMagazine = currentMagazine _player;
#include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"


_isNotOnMap = !visibleMap;
_isNotDragging = !(_player getVariable ["ACE_Dragging_isDragging", false]);
_isNotCarrying = !(_player getVariable ["ACE_Dragging_isCarrying", false]);
_isNotSwimming = !([_player] call ACE_Common_fnc_isSwimming);
_isDesactivated = !(_player getVariable ["FCLA_Smoke_Signal", false]);
_hasSmokeMagazine = _currentMagazine in _compatibleSmokeMagazines;
_isNotSurrendering = !(_player getVariable ["ACE_Captives_isSurrendering", false]);
(FCLA_Smoke_Signal_Allowed) && (_isNotOnMap) && (_isNotDragging) && (_isNotCarrying) && (_isNotSwimming) && (_isDesactivated) && (_hasSmokeMagazine) && (_isNotSurrendering)
