
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_showAttributesIDCard

Description:
    Muestra los atributos (doctor, ingeniero y EOD) de la unidad en un mensaje,
    ubicado en la esquina superior derecha de la pantalla.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

[{
  (_this select 0) params ["_unit"];
  _isEOD = [_unit, "EOD"] call FCLA_Development_fnc_checkACETrait;
  _isDoctor = [_unit, "Doctor"] call FCLA_Development_fnc_checkACETrait;
  _isAdvancedEnginner = [_unit, "Advanced_Enginner"] call FCLA_Development_fnc_checkACETrait;
  _arrayOfEODTextProperties = if (_isEOD) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  _arrayOfDoctorTextProperties = if (_isDoctor) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  _arrayOfAdvancedEnginnerTextProperties = if (_isAdvancedEnginner) then {["#58D68D", "√"];} else {["#D65858", "X"];};
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  _isShowingIDCard = !isNull findDisplay 10001;
  if (_isShowingIDCard) then {
    hintSilent parseText format ["
    <t font='PuristaBold' size='1.5' underline='1'>ESPECIALIDADES</t><br/><br/>
    <t font='PuristaBold' size='1.25'>Medico...        |<t color='%1'> %2 </t>|</t><br/>
    <t font='PuristaBold' size='1.25'>Ingeniero...    |<t color='%3'> %4 </t>|</t><br/>
    <t font='PuristaBold' size='1.25'>  EOD...            |<t color='%5'> %6 </t>|</t>
    ", _arrayOfDoctorTextProperties select 0, _arrayOfDoctorTextProperties select 1, _arrayOfAdvancedEnginnerTextProperties select 0, _arrayOfAdvancedEnginnerTextProperties select 1, _arrayOfEODTextProperties select 0, _arrayOfEODTextProperties select 1];
  } else {
    hintSilent "";
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
}, 0.1, _this] call CBA_fnc_addPerFrameHandler;
