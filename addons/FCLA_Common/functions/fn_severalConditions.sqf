
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si la unidad enviada, como argumento 0, cumple con alguna de las
 * condiciones listadas.
 *
 * Conditions:
 *             0: ¿Esta controlando un UAV?
 *             1: ¿Tiene el mapa abierto?
 *             2: ¿Esta subiendo las escaleras de un edificio?
 *             3: ¿Esta utilizando el Zeus?
 *             4: ¿Esta en un vehículo?
 *             5: ¿Esta muerto?
 *             6: ¿Esta arrastrando un objeto?
 *             7: ¿Esta moviendo un objeto?
 *             8: ¿Esta nadando?
 *             9: ¿Esta utilizando el modo cámara?
 *             10: ¿Esta arrestado?
 *             11: ¿Esta inconsiente?
 *             12: ¿Se esta riendiendo?
 *             13: ¿Esta viendo un ID (identificación)?
 *             14: ¿Esta apoyando el arma?
 *             15: ¿Tiene el inventario abierto?
 *             16: ¿Esta recargando ó manipulando un arma?
 *
 * Arguments:
 *            0: Unidad a verificar. <UNIT>
 *            1: Condiciones a excluir, opcional. <ARRAY OF NUMBER/S> (default: [])
 *                # Numeros aceptados: 0 al 16 incluídos (guiarse con el comentario "Conditions").
 *
 * Return Value:
 * ¿Cumple con las condiciones? <BOOL>
 *
 * Examples:
 * [player] call FCLA_Common_fnc_severalConditions; //Sin condiciones excluidas.
 * [player, [3, 4]] call FCLA_Common_fnc_severalConditions; //Condiciones 3 y 4 excluidas.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_excludedConditions", [], [[]], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]]
       ];
if (isNull _unit) exitWith {false};



//Condiciones.
_inUAV = ([_unit] call ACE_Common_fnc_getUavControlPosition) != "";
_isOnMap = visibleMap;
_inStairs = _unit getVariable ["FCLA_inStairs", false];
_inCurator = !isNull findDisplay 312;
_inVehicle = !isNull objectParent _unit;
_isNotAlive = !alive _unit;
_isDragging = _unit getVariable ["ACE_Dragging_isDragging", false];
_isCarrying = _unit getVariable ["ACE_Dragging_isCarrying", false];
_isSwimming = [_unit] call ACE_Common_fnc_isSwimming;
_inCameraMode = _unit in (call ACE_Spectator_fnc_players);
_isHandcuffed = _unit getVariable ["ACE_Captives_isHandcuffed", false];
_isUnconscious = _unit getVariable ["ACE_isUnconscious", false];
_isSurrendering = _unit getVariable ["ACE_Captives_isSurrendering", false];
_isShowingIDCard = !isNull findDisplay 10001;
_isWeaponDeployed = isWeaponDeployed _unit;
_isInventoryOpened = !isnull (findDisplay 602);
_inWeaponAnimation = !isNil "FCLA_Weapon_Animation";

//Excluir condiciones.
_conditions = [_inUAV, _isOnMap, _inStairs, _inCurator, _inVehicle, _isNotAlive, _isDragging, _isCarrying, _isSwimming, _inCameraMode, _isHandcuffed, _isUnconscious, _isSurrendering, _isShowingIDCard, _isWeaponDeployed, _isInventoryOpened, _inWeaponAnimation];
{_conditions set [_x, nil]} forEach _excludedConditions;
true in _conditions
