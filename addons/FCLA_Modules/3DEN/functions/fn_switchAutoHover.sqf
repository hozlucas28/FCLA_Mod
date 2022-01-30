
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
_disableAutoHover = _module getVariable ["FCLA_Auto_Hover", "Activated"];
if (_moreThanOne) exitWith {["FCLA_Module_Auto_Hover", "• MÓDULO: PROPULSIÓN AUTOMÁTICA", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Propulsión automática' han sido desactivados."] call FCLA_Common_fnc_errorMessage;};



//Activar/Desactivar propulsión automática.
[{CBA_missionTime > 0}, {
  ["FCLA_Auto_Hover", _this select 1] call CBA_fnc_publicVariable;
  ["FCLA_Module_Deactivate_Auto_Hover", []] call CBA_fnc_globalEvent;
  deleteVehicle (_this select 0);
}, [_module, _disableAutoHover]] call CBA_fnc_waitUntilAndExecute;
