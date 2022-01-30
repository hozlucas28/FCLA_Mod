
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje a modo de subtítulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Show_Subtitle", {
  if (isServer) exitWith {};

  [{CBA_missionTime > 0},
  {
    params ["_module", "_emitterObject", "_emitter", "_subtitle", "_color", "_timeToHide", "_needShortRadio", "_needLongRadio", "_side", "_moduleArea", "_repeatable"];
    if (({_x <= 0} count [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4]) >= 3) exitWith {
      [{
        params ["_module", "_emitterObject", "_line", "_color", "_timeToHide", "_conditions"];
        [{deleteVehicle _this;}, _module, _timeToHide + 1] call CBA_fnc_waitAndExecute;
        ["FCLA_Show_Subtitles", [_emitterObject, _line, _color, _timeToHide, _conditions]] call CBA_fnc_localEvent;
      }, [_module, _emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, -1]], 1] call CBA_fnc_waitAndExecute;

      if (!DEBUG) exitWith {};
      ["[FCLA] (modules): Módulo 'Show Subtitle' ejecutado."] call ACE_Common_fnc_serverLog;
    };

    _Condition = {
      (call CBA_fnc_currentUnit) in thisList;
    };

    _StatementOnActivation = {
      _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", []];
      _arguments call FCLA_Common_fnc_showSubtitles;
    };

    _StatementOnDeactivation = {
      _arguments = thisTrigger getVariable ["FCLA_Subtitle_Attributes", []];
      [_arguments select 0] call FCLA_Common_fnc_hideSubtitles;
    };

    _trigger = createTrigger ["EmptyDetector", getpos _emitterObject, false];
    _trigger setTriggerInterval 0.5;
    _trigger attachTo [_emitterObject, [0, 0, 0]];
    _trigger setTriggerActivation ["ANY", "PRESENT", _repeatable];
    _trigger setTriggerArea _moduleArea;
    _trigger setTriggerStatements [[_Condition] call ACE_Common_fnc_codeToString, [_StatementOnActivation] call ACE_Common_fnc_codeToString, [_StatementOnDeactivation] call ACE_Common_fnc_codeToString];
    _trigger setVariable ["FCLA_Subtitle_Attributes", [_emitterObject, [[_emitter, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _side, _moduleArea]], true];
    [{(!alive (_this select 1)) || (!alive (_this select 2))}, {{deleteVehicle _x;} forEach _this;}, [_module, _emitterObject, _trigger]] call CBA_fnc_waitUntilAndExecute;

    if (!DEBUG) exitWith {};
    ["[FCLA] (modules): Módulo 'Show Subtitle' ejecutado."] call ACE_Common_fnc_serverLog;
  }, _this] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_addEventHandler;
