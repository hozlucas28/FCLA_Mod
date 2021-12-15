
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
_distanceToShow = _module getVariable ["FCLA_Distance_To_Show", -1];
_repeatable = if (_distanceToShow > -1) then {_module getVariable ["FCLA_Repeatable", false];} else {false;};
_needLongRadio = _module getVariable ["FCLA_Need_Long_Radio", false];
_needShortRadio = _module getVariable ["FCLA_Need_Short_Radio", false];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
if ((_emitter == "") || (_subtitle == "") || (_timeToHide <= 0)) exitWith {};



//Generar subtítulo.
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_emitterObject = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {_module;};

_Condition = {
  (call CBA_fnc_currentUnit) in thisList;
};

_StatementOnActivation = {
  _player = call CBA_fnc_currentUnit;
  _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", objNull];
  ["FCLA_Show_Subtitles", _arguments, _player] call CBA_fnc_targetEvent;
};

_StatementOnDesactivation = {
  //_player = call CBA_fnc_currentUnit;
  //_arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", objNull];
  //["FCLA_Hide_Subtitles", [_arguments select 0], _player] call CBA_fnc_targetEvent;
};

[{
  params ["_emitterObject", "_repeatable", "_distanceToShow", "_Condition", "_StatementOnActivation", "_StatementOnDesactivation", "_subtitleArguments"];
  _trigger = createTrigger ["EmptyDetector", getpos _emitterObject, true];
  _trigger setTriggerInterval 0.5;
  _trigger attachTo [_emitterObject, [0, 0, 0]];
  _trigger setTriggerActivation ["ANY", "PRESENT", _repeatable];
  _trigger setTriggerArea [_distanceToShow, _distanceToShow, 0, false, _distanceToShow];
  _trigger setTriggerStatements [[_Condition] call ACE_Common_fnc_codeToString, [_StatementOnActivation] call ACE_Common_fnc_codeToString, [_StatementOnDesactivation] call ACE_Common_fnc_codeToString];
  _trigger setVariable ["FCLA_Subtitle_Attributes", _subtitleArguments, true];
  [{!alive (_this select 0)}, {deleteVehicle (_this select 1);}, [_emitterObject, _trigger]] call CBA_fnc_waitUntilAndExecute;
}, [_emitterObject, _repeatable, _distanceToShow, _Condition, _StatementOnActivation, _StatementOnDesactivation, [_emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, _distanceToShow]]], 0.1] call CBA_fnc_waitAndExecute;


//Eliminar módulo.
if (_module != _emitterObject) then {deleteVehicle _module;};

//REVISAR COMO SE CUANDO SE REPETI ESTA ACTIVADO.
//QUE SE GENERE CUANDO NO HAY UN OBJETO SINCRONIZADO Y TAMAÑO ES DEL MAPA
