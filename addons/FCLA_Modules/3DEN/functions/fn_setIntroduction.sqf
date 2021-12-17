
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una introducción animada al comienzo del escenario.
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
_moreThanOne = ("FCLA_Module_Introduction" countType _allLogics) > 1;
_title = _module getVariable ["FCLA_Title", ""];
_subtitle = _module getVariable ["FCLA_Subtitle", ""];
_introductoryVideo = _module getVariable ["FCLA_Introductory_Video", ""];
if (_moreThanOne) exitWith {["FCLA_Module_Introduction", "• MÓDULO: INTRODUCCIÓN", "¡Error! Solo puede haber un módulo de este tipo. Los módulos 'Introducción' han sido desactivados."] spawn FCLA_Modules_fnc_reportError3DEN;};
if ((_title == "") && (_subtitle == "") && (_introductoryVideo == "")) exitWith {["¡Error! El módulo 'Introducción' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Reproducir introducción.
[_title, _subtitle, _introductoryVideo] call FCLA_Common_fnc_setIntroduction;


//Eliminar módulo.
deleteVehicle _module;