
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje a modo de subtitulo.
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
_side = _module getVariable ["FCLA_Side", "ALL"];
_color = _module getVariable ["FCLA_Color", "SIDE"];
_emitter = _module getVariable ["FCLA_Emitter", ""];
_subtitle = _module getVariable ["FCLA_Subtitle", ""];
_timeToHide = _module getVariable ["FCLA_Time_To_Hide", 0];
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_repeatable = _module getVariable ["FCLA_Repeatable", false];
_needLongRadio = _module getVariable ["FCLA_Need_Long_Radio", false];
_needShortRadio = _module getVariable ["FCLA_Need_Short_Radio", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
if ((_emitter == "") || (_subtitle == "") || (_timeToHide <= 0)) exitWith {["FCLA_Module_Show_Subtitle", "- MODULO: MOSTRAR SUBTITULO", "¡Error! El/Un modulo 'Mostrar subtitulo' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Generar subtitulo.
_emitterObject = if ((count _compatibleSynchronizedObjects) == 1) then {_compatibleSynchronizedObjects select 0;} else {_module;};
if (_module != _emitterObject) then {_module attachTo [_emitterObject, [0, 0, 0]];};
_jipID = ["FCLA_Module_Show_Subtitle", [_module, _emitterObject, _emitter, _subtitle, _color, _timeToHide, _needShortRadio, _needLongRadio, _side, _moduleArea, _repeatable]] call CBA_fnc_globalEventJIP;
[_jipID, _module] call CBA_fnc_removeGlobalEventJIP;
