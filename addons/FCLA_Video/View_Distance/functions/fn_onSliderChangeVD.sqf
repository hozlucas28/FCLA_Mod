
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_onSliderChangeVD

Public: [No]
---------------------------------------------------------------------------- */

private ["_sliderPos","_updateType"];
_varType1 = [_this, 0, "", [""]] call BIS_fnc_param;
_slider1 = ctrlIDC ([_this, 1, 0, [0, controlNull]] call BIS_fnc_param);
_sliderPos = [_this, 2, 0, [0]] call BIS_fnc_param;
_text1 = [_this, 3, 0, [0, controlNull]] call BIS_fnc_param;
_varType2 = [_this, 4, "", [""]] call BIS_fnc_param;
_slider2 = [_this, 5, 0, [0, controlNull]] call BIS_fnc_param;
_text2 = [_this, 6, 0, [0, controlNull]] call BIS_fnc_param;
_modeVar = [_this, 7, "", [""]] call BIS_fnc_param;
_percentVar = [_this, 8, "", [""]] call BIS_fnc_param;

if (count _this < 8) then {
	_updateType = 2;
} else {
	_modeVar = call compile _modeVar;
	switch (_modeVar) do {
		case 1: {_updateType = 3;};
		default {_updateType = 1;};
	};
};


_viewDistValue = _sliderPos min FCLA_VD_maxView max 0;
_objViewDistValue = if (_modeVar isEqualTo 1) then {_sliderPos  * (call compile _percentVar) min FCLA_VD_maxObj} else {_sliderPos min FCLA_VD_maxObj};


switch (_updateType) do {
	case 1: {
		sliderSetPosition [_slider1, _viewDistValue];
		ctrlSetText [_text1, str round _viewDistValue];
		sliderSetRange [_slider2, 0, _viewDistValue];

		call compile format ["%1 = %2", _varType1, _viewDistValue];
		call compile format ["profileNamespace setVariable ['%1',%1]", _varType1];

		if ((call compile _varType2) > _viewDistValue) then {
			sliderSetPosition [_slider2, _objViewDistValue];
			ctrlSetText [_text2, str round _objViewDistValue];
			call compile format ["%1 = %2", _varType2, _objViewDistValue];
			call compile format ["profileNamespace setVariable ['%1',%1]", _varType2];
		};

		[_updateType] call FCLA_Video_Settings_fnc_updateSettingsVD;
	};
	case 2: {
		sliderSetPosition [_slider1, _objViewDistValue];
		ctrlSetText [_text1, str round _objViewDistValue];
		call compile format ["%1 = %2", _varType1, _objViewDistValue];
		call compile format ["profileNamespace setVariable ['%1',%1]", _varType1];
		[_updateType] call FCLA_Video_Settings_fnc_updateSettingsVD;
	};
	case 3: {
		sliderSetPosition [_slider1, _viewDistValue];
		ctrlSetText [_text1, str round _viewDistValue];
		sliderSetRange [_slider2, 0, _viewDistValue];
		call compile format ["%1 = %2", _varType1, _viewDistValue];
		call compile format ["profileNamespace setVariable ['%1',%1]", _varType1];

		if ((call compile _varType2) > _viewDistValue) then {
			sliderSetPosition [_slider2, _objViewDistValue];
			ctrlSetText [_text2, str round _objViewDistValue];
			call compile format ["%1 = %2", _varType2, _objViewDistValue];
			call compile format ["profileNamespace setVariable ['%1',%1]", _varType2];
		};

		sliderSetPosition [_slider2, _objViewDistValue];
		ctrlSetText [_text2, str round _objViewDistValue];
		call compile format ["%1 = %2", _varType2, _objViewDistValue];
		call compile format ["profileNamespace setVariable ['%1',%1]", _varType2];
		[_updateType] call FCLA_Video_Settings_fnc_updateSettingsVD;
	};
};
