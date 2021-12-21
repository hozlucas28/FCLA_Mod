
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
if (_moreThanOne) exitWith {["FCLA_Module_Radio_Range", "• MÓDULO: MODIFICAR ALCANCE (TFAR)", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Modificar alcance (TFAR)' han sido desactivados."] spawn FCLA_Modules_fnc_reportError3DEN;};



//Modificar alcance.
_multiplier = [_module getVariable ["FCLA_Multiplier", 1], 0] call BIS_fnc_cutDecimals;
missionNamespace setVariable ["FCLA_TFAR_Multiplicator", _multiplier, true];
{_x setVariable ["tf_range", _multiplier, true];} forEach vehicles;

{
  _x setVariable ["tf_sendingDistanceMultiplicator", _multiplier, true];
  _x setVariable ["tf_receivingDistanceMultiplicator", _multiplier, true];
} forEach allUnits;
