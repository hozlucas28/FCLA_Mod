
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra las características de la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

[{
  _args params ["_target", "_player"];
  _isEOD = [_target, "EOD"] call FCLA_Common_fnc_checkUnitTrait;
  _isDoctor = [_target, "Doctor"] call FCLA_Common_fnc_checkUnitTrait;
  _isAdvancedEnginner = [_target, "Advanced Enginner"] call FCLA_Common_fnc_checkUnitTrait;
  _EODTextProperties = if (_isEOD) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  _doctorTextProperties = if (_isDoctor) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  _advancedEnginnerTextProperties = if (_isAdvancedEnginner) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  if (isNull findDisplay 10001) exitWith {["FCLA_Hint_Silent", [""], _player] call CBA_fnc_targetEvent; [_handle] call CBA_fnc_removePerFrameHandler;};
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  ["FCLA_Hint_Silent", [
  parseText format ["<t font='PuristaBold' size='1.5' underline='1'> ESPECIALIDADES</t><br/><br/>
  <t font='PuristaBold' size='1.25'>Médico...        |<t color='%1'> %2 </t>|</t><br/>
  <t font='PuristaBold' size='1.25'>Ingeniero...    |<t color='%3'> %4 </t>|</t><br/>
  <t font='PuristaBold' size='1.25'> EOD...            |<t color='%5'> %6 </t>|</t>
  ", _doctorTextProperties select 0, _doctorTextProperties select 1, _advancedEnginnerTextProperties select 0, _advancedEnginnerTextProperties select 1, _EODTextProperties select 0, _EODTextProperties select 1]
  ], _player] call CBA_fnc_targetEvent;
}, 0.1, _this] call CBA_fnc_addPerFrameHandler;
