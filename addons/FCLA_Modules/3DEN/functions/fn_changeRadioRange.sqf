
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Modifica el alcance de todas las radios de onda corta y larga.
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
_moreThanOne = ("FCLA_Module_Radio_Range" countType _allLogics) > 1;
if (_moreThanOne) exitWith {["FCLA_Module_Radio_Range", "- MODULO: MODIFICAR ALCANCE (TFAR)", "¡Error! Solo puede haber un modulo de este tipo. Los modulos 'Modificar alcance (TFAR)' han sido desactivados."] call FCLA_Common_fnc_errorMessage;};



//Modificar alcance.
_multiplier = [_module getVariable ["FCLA_Multiplier", 1], 0] call BIS_fnc_cutDecimals;
["FCLA_Change_Radio_Range", [allUnits + vehicles, _multiplier]] call CBA_fnc_globalEventJIP;


//Eliminar modulo.
deleteVehicle _module;
