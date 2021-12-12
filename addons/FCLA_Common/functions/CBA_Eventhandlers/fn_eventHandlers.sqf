
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea eventhandlers públicos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_Change_Radio_Range", {
  {
    if (_x isKindOf "AllVehicles") exitWith {_x setVariable ["tf_range", _this select 1, true]};
    _x setVariable ["tf_sendingDistanceMultiplicator", _this select 1, true];
    _x setVariable ["tf_receivingDistanceMultiplicator", _this select 1, true];
  } forEach (_this select 0);
}] call CBA_fnc_addEventHandler;


["FCLA_Hint", {hint (_this select 0);}] call CBA_fnc_addEventHandler;
["FCLA_Hint_Silent", {hintSilent (_this select 0);}] call CBA_fnc_addEventHandler;
["FCLA_System_Chat", {systemChat (_this select 0);}] call CBA_fnc_addEventHandler;
["FCLA_PTSD", {_this call FCLA_Common_fnc_setPTSD;}] call CBA_fnc_addEventHandler;
["FCLA_Shellshock", {_this call FCLA_Common_fnc_Shellshock;}] call CBA_fnc_addEventHandler;
["FCLA_Common_Execute", {(_this select 1) call (_this select 0);}] call CBA_fnc_addEventHandler;
["FCLA_Hide_Subtitles", {_this call FCLA_Common_fnc_hideSubtitles;}] call CBA_fnc_addEventHandler;
["FCLA_Show_Subtitles", {_this call FCLA_Common_fnc_showSubtitles;}] call CBA_fnc_addEventHandler;
["FCLA_Random_Lip", {(_this select 0) setRandomLip (_this select 1);}] call CBA_fnc_addEventHandler;
["FCLA_Radio_Frequencies", {call FCLA_Common_fnc_setRadioFrequencies;}] call CBA_fnc_addEventHandler;
["FCLA_GUI_Message", {_this spawn {[_this select 1, _this select 0] call BIS_fnc_guiMessage;};}] call CBA_fnc_addEventHandler;
["FCLA_Switch_Lamps", {{[_x, _this select 1] call BIS_fnc_switchLamp;} forEach (_this select 0);}] call CBA_fnc_addEventHandler;
