
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_onEBinput_syncmodeVD

Public: [No]
---------------------------------------------------------------------------- */

_textBoxCtrl = [_this, 0, controlNull, [0, controlNull]] call BIS_fnc_param;
_varString = [_this, 1, "", [""]] call BIS_fnc_param;
_sliderCtrl = [_this, 2, controlNull, [0, controlNull]] call BIS_fnc_param;
_sliderTextboxCtrl = [_this, 3, controlNull, [0, controlNull]] call BIS_fnc_param;

_inputValue = [ctrlText _textBoxCtrl, "0123456789"] call BIS_fnc_filterString;
_inputValue = if (_inputValue == "") then {1} else {call compile _inputValue min 100 max 1};

ctrlSetText [_textBoxCtrl, (str _inputValue + "%")];

_percentageVar = "FCLA_VD_" + _varString + "SyncPercentage";
_percentage = _inputValue / 100;
call compile format ["%1 = %2", _percentageVar, _percentage];
call compile format ["profileNamespace setVariable ['%1', %1]", _percentageVar];

_viewDistVar = "FCLA_VD_" + _varString;
_viewDist = call compile _viewDistVar;
_objVDVar = "FCLA_VD_" + _varString + "Obj";
_objVD = _viewDist * _percentage min FCLA_VD_maxObj;

sliderSetPosition [_sliderCtrl, _objVD];
ctrlSetText [_sliderTextboxCtrl, str round _objVD];

call compile format ["%1 = %2", _objVDVar, _objVD];
call compile format ["profileNamespace setVariable ['%1', %1]", _objVDVar];
[2] call FCLA_Video_Settings_fnc_updateSettingsVD;
