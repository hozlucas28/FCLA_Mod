
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
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_repeatable = _module getVariable ["FCLA_Repeatable", false];
_needLongRadio = _module getVariable ["FCLA_Need_Long_Radio", false];
_needShortRadio = _module getVariable ["FCLA_Need_Short_Radio", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
if ((_emitter == "") || (_subtitle == "") || (_timeToHide <= 0)) exitWith {["¡Error! El/Un módulo 'Mostrar subtítulo' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Generar subtítulo.
_emitterObject = if ((count _compatibleSynchronizedObjects) == 1) then {_compatibleSynchronizedObjects select 0;} else {_module;};
if (_module != _emitterObject) then {_module attachTo [_emitterObject, [0, 0, 0]];};

if (({_x <= 0} count [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4]) >= 3) exitWith {
  [{
    params ["_module", "_emitterObject", "_line", "_color", "_timeToHide", "_conditions"];
    [{deleteVehicle _this;}, _module, _timeToHide + 1] call CBA_fnc_waitAndExecute;
    [_emitterObject, _line, _color, _timeToHide, _conditions] call FCLA_Common_fnc_showSubtitles;
  }, [_module, _emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, -1]], 0.1] call CBA_fnc_waitAndExecute;
};


_Condition = {
  (call CBA_fnc_currentUnit) in thisList;
};

_StatementOnActivation = {
  _player = call CBA_fnc_currentUnit;
  _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", []];
  _arguments call FCLA_Common_fnc_showSubtitles;
};

_StatementOnDeactivation = {
  _player = call CBA_fnc_currentUnit;
  _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", []];
  [_arguments select 0] call FCLA_Common_fnc_showSubtitles;
};

_trigger = createTrigger ["EmptyDetector", getpos _emitterObject, false];
_trigger setTriggerInterval 0.5;
_trigger attachTo [_emitterObject, [0, 0, 0]];
_trigger setTriggerActivation ["ANY", "PRESENT", _repeatable];
_trigger setTriggerArea _moduleArea;
_trigger setTriggerStatements [[_Condition] call ACE_Common_fnc_codeToString, [_StatementOnActivation] call ACE_Common_fnc_codeToString, [_StatementOnDeactivation] call ACE_Common_fnc_codeToString];
_trigger setVariable ["FCLA_Subtitle_Attributes", [_emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, _moduleArea]], true];
[{(!alive (_this select 1)) || (!alive (_this select 2))}, {{deleteVehicle _x;} forEach _this;}, [_module, _emitterObject, _trigger]] call CBA_fnc_waitUntilAndExecute;
