
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_onLBSelChanged_syncmodeVD

Public: [No]
---------------------------------------------------------------------------- */

private ["_varString"];
_mode = _this select 0;
_varString = [_this, 1, "", [""]] call BIS_fnc_param;
_textBoxCtrl = [_this, 2, controlNull, [0, controlNull]] call BIS_fnc_param;
_sliderCtrl = [_this, 3, controlNull, [0, controlNull]] call BIS_fnc_param;
_sliderTextboxCtrl = [_this, 4, controlNull, [0, controlNull]] call BIS_fnc_param;

switch (_mode) do {
	case 1: {
		ctrlEnable [_textBoxCtrl, true];
		_percentageVar = "FCLA_VD_" + _varString + "SyncPercentage";
		_percentage = call compile _percentageVar;
		ctrlSetText [_textBoxCtrl, format ["%1",_percentage * 100] + "%"];

		_viewDistVar = "FCLA_VD_" + _varString;
		_viewDist = call compile _viewDistVar;
		_objVDVar = "FCLA_VD_" + _varString + "Obj";
		_objVD = _viewDist * _percentage min FCLA_VD_maxObj;

		ctrlEnable [_sliderCtrl, false];
		sliderSetPosition [_sliderCtrl, _objVD];
		ctrlEnable [_sliderTextboxCtrl, false];
		ctrlSetText [_sliderTextboxCtrl, str round _objVD];

		call compile format ["%1 = %2", _objVDVar, _objVD];
		call compile format ["profileNamespace setVariable ['%1', %1]", _objVDVar];
	};
	default {
		ctrlEnable [_textBoxCtrl, false];
		ctrlSetText [_textBoxCtrl, ""];
		ctrlEnable [_sliderCtrl, true];
		ctrlEnable [_sliderTextboxCtrl, true];
	};
};

_modeVar = "FCLA_VD_" + _varString + "SyncMode";
call compile format ["%1 = %2", _modeVar, _mode];
call compile format ["profileNamespace setVariable ['%1', %1]", _modeVar];
[2] call FCLA_Video_Settings_fnc_updateSettingsVD;
