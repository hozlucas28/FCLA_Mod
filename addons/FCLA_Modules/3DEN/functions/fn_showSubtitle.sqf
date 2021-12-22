
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje a modo de subtítulo.
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
_moduleArea = _module getvariable ["objectArea", [0, 0, 0, false, -1]];
_areaToShow = [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4];
_repeatable = _module getVariable ["FCLA_Repeatable", false];
_needLongRadio = _module getVariable ["FCLA_Need_Long_Radio", false];
_needShortRadio = _module getVariable ["FCLA_Need_Short_Radio", false];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_emitter == "") || (_subtitle == "") || (_timeToHide <= 0)) exitWith {["¡Error! El/Un módulo 'Mostrar subtítulo' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Generar subtítulo.
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_emitterObject = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {_module;};
if (_module != _emitterObject) then {_module attachTo [_emitterObject, [0, 0, 0]];};

if (({_x <= 0} count _areaToShow) < 3) exitWith {
  [{
    params ["_module", "_emitterObject", "_line", "_color", "_timeToHide", "_conditions"];
    [{deleteVehicle _this;}, _module, _timeToHide + 1] call CBA_fnc_waitAndExecute;
    ["FCLA_Show_Subtitles", [_emitterObject, _line, _color, _timeToHide, _conditions]] call CBA_fnc_localEvent;
  }, [_module, _emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, _areaToShow]], 0.1] call CBA_fnc_waitAndExecute;
};

_Condition = {
  (call CBA_fnc_currentUnit) in thisList;
};

_StatementOnActivation = {
  _player = call CBA_fnc_currentUnit;
  _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", objNull];
  ["FCLA_Show_Subtitles", _arguments, _player] call CBA_fnc_targetEvent;
};

_StatementOnDesactivation = {
  _player = call CBA_fnc_currentUnit;
  _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", objNull];
  ["FCLA_Hide_Subtitles", [_arguments select 0], _player] call CBA_fnc_targetEvent;
};

_trigger = createTrigger ["EmptyDetector", getpos _emitterObject, false];
_trigger setTriggerInterval 0.5;
_trigger attachTo [_emitterObject, [0, 0, 0]];
_trigger setTriggerActivation ["ANY", "PRESENT", _repeatable];
_trigger setTriggerArea [_areaToShow select 0, _areaToShow select 1, 0, false, _areaToShow select 2];
_trigger setTriggerStatements [[_Condition] call ACE_Common_fnc_codeToString, [_StatementOnActivation] call ACE_Common_fnc_codeToString, [_StatementOnDesactivation] call ACE_Common_fnc_codeToString];
_trigger setVariable ["FCLA_Subtitle_Attributes", [_emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, _areaToShow]], true];
[{!alive (_this select 1)}, {{deleteVehicle _x;} forEach _this;}, [_module, _emitterObject, _trigger]] call CBA_fnc_waitUntilAndExecute;
