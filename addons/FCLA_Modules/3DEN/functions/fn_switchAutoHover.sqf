
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Activa/Desactiva la propulsión automática en los helicópteros.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_allLogics = allMissionObjects "Logic";
_moreThanOne = ("FCLA_Module_Auto_Hover" countType _allLogics) > 1;
_allAirVehicles = vehicles select {_x isKindOf "Air"};
_disableAutoHover = _module getVariable ["FCLA_Auto_Hover", "Activated"];
if (_moreThanOne) exitWith {["FCLA_Module_Auto_Hover", "• MÓDULO: PROPULSIÓN AUTOMÁTICA", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Propulsión automática' han sido desactivados."] spawn FCLA_Modules_fnc_reportError3DEN;};



//Activar/Desactivar propulsión automática.
missionNamespace setVariable ["FCLA_Auto_Hover", _disableAutoHover];
{(driver _x) action ["AutoHoverCancel", _x];} forEach _allAirVehicles;
