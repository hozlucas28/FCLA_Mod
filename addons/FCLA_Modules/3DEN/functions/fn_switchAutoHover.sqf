
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
_assignedEntity = _module getVariable ["FCLA_Assigned_Entity", objNull];
_assignedCurator = _module getVariable ["FCLA_Assigned_Curator", objNull];
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_allLogics = allMissionObjects "Logic";
_moreThanOne = ("FCLA_Module_Auto_Hover" countType _allLogics) > 1;
_disableAutoHover = if ((toUpper (_module getVariable ["FCLA_Disable_Auto_Hover", false])) == "ACTIVATED") then {false;} else {true;};
if (_moreThanOne) exitWith {["FCLA_Module_Auto_Hover", "• MÓDULO: PROPULSIÓN AUTOMÁTICA", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Propulsión automática' han sido desactivados."] spawn FCLA_Modules_fnc_reportError3DEN;};



//Activar/Desactivar propulsión automática.
missionNamespace setVariable ["FCLA_Disable_Auto_Hover", _disableAutoHover];
{if (_x isKindOf "Air") then {(driver _x) action ["AutoHoverCancel", _x];};} forEach vehicles;


//Eliminar módulo.
deleteVehicle _module;
