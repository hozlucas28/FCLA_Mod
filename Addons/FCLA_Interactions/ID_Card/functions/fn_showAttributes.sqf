
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra los atributos (doctor, ingeniero y EOD) de la unidad en un mensaje,
 * ubicado en la esquina superior derecha de la pantalla.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

[{
  (_this select 0) params ["_unit"];
  _isEOD = [_unit, "EOD"] call FCLA_Development_fnc_checkUnitTrait;
  _isDoctor = [_unit, "Doctor"] call FCLA_Development_fnc_checkUnitTrait;
  _isAdvancedEnginner = [_unit, "Advanced_Enginner"] call FCLA_Development_fnc_checkUnitTrait;
  _EODTextProperties = if (_isEOD) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  _doctorTextProperties = if (_isDoctor) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  _advancedEnginnerTextProperties = if (_isAdvancedEnginner) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  _isShowingIDCard = !isNull findDisplay 10001;
  if (_isShowingIDCard) then {
    hintSilent parseText format ["
    <t font='PuristaBold' size='1.5' underline='1'>ESPECIALIDADES</t><br/><br/>
    <t font='PuristaBold' size='1.25'>Medico...        |<t color='%1'> %2 </t>|</t><br/>
    <t font='PuristaBold' size='1.25'>Ingeniero...    |<t color='%3'> %4 </t>|</t><br/>
    <t font='PuristaBold' size='1.25'>  EOD...            |<t color='%5'> %6 </t>|</t>
    ", _doctorTextProperties select 0, _doctorTextProperties select 1, _advancedEnginnerTextProperties select 0, _advancedEnginnerTextProperties select 1, _EODTextProperties select 0, _EODTextProperties select 1];
  } else {
    hintSilent "";
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
}, 0.1, _this] call CBA_fnc_addPerFrameHandler;
