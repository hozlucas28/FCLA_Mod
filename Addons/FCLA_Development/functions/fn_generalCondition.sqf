
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_generalCondition

Description:
    Verifica si la unidad cumple con las condiciones de la función, si
    cualquiera de estas verificaciones se cumplen, retornara un verdadero (true).

    - Verifica si esta: en un UAV; en el Zeus; en el mapa; en las escaleras;
                        en un vehículo; vivo; arrastrando un objeto;
                        moviendo un objeto; nadando; en modo cámara; arrestado;
                        inconsciente; rindiendose; esta viendo una identificación;
                        abierto el inventario; manipulando ó recargando su arma;
                        no esta tocando suelo.

Parameters:
    _unit - Unidad a verificar.

Return:
    Boolean (true/false).

Examples:
    [player] call FCLA_Development_fnc_generalCondition;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", call CBA_fnc_currentUnit]];


_inUAV = !(isNull (getConnectedUAV _unit)) && (cameraOn == (getConnectedUAV _unit));
_inZeus = !isNull findDisplay 312;
_isOnMap = visibleMap;
_inStairs = _unit getVariable ["FCLA_inStairs", false];
_inVehicle = !isNull objectParent _unit;
_isNotAlive = !alive _unit;
_isDragging = _unit getVariable ["ACE_Dragging_isDragging", false];
_isCarrying = _unit getVariable ["ACE_Dragging_isCarrying", false];
_isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
_inCameraMode = _unit getVariable ["FCLA_Camera_Mode_On", false];
_isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
_isUnconscious = _unit getVariable ["ACE_isUnconscious", false];
_isSurrendering = _unit getVariable ["ACE_Captives_isSurrendering", false];
_isShowingIDCard = !isNull findDisplay 10001;
_isInventoryOpened = !isnull (findDisplay 602);
_inWeaponAnimation = !isNil "FCLA_inWeapon_Animation";
_isNotTouchingGround = !isTouchingGround _unit;
(_inUAV) || (_inZeus) || (_isOnMap) || (_inStairs) || (_inVehicle) || (_isNotAlive) || (_isDragging) || (_isCarrying) || (_isSwimming) || (_inCameraMode) || (_isHandcuffed) || (_isUnconscious) || (_isSurrendering) || (_isShowingIDCard) || (_isInventoryOpened) || (_inWeaponAnimation) || (_isNotTouchingGround)
