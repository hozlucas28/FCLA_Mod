
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica la accion propia.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
_this params ["_target", "_player", "_params", "_action"];
_action params ["_classname", "_displayName", "_icon", "_statement", "_condition", "_childrens", "_params", "_position", "_distance", "_otherParameters", "_modifierFunction"];
_vehicle = vehicle _target;
_headRealPosition = _vehicle modelToWorld (_vehicle selectionPosition "arm3");
_allMines = (nearestObjects [_headRealPosition, [], 5, true]) select {_x in allMines};
_areNotNearMines = (count _allMines) <= 0;
if (_areNotNearMines) exitWith {};


//Modificar icono.
_nearestMine = _allMines select 0;
_defaultMagazine = getText (configFile >> 'CfgAmmo' >> typeOf _nearestMine >> 'defaultMagazine');
_action set [2, getText (configFile >> 'CfgMagazines' >> _defaultMagazine >> 'picture')];
