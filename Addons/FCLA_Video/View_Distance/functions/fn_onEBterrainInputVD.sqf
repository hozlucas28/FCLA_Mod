
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_onEBterrainInputVD

Public: [No]
---------------------------------------------------------------------------- */

private ["_textValue"];
_varType = [_this, 0, "", [""]] call BIS_fnc_param;
_textCtrl = [_this, 1, controlNull, [0, controlNull]] call BIS_fnc_param;
_listbox = [_this, 2, controlNull, [0, controlNull]] call BIS_fnc_param;

_textValue = [ctrlText _textCtrl, "0123456789."] call BIS_fnc_filterString;
_textValue = if (_textValue == "") then {50} else {call compile _textValue min 50 max 3.125};


if (!FCLA_VD_allowNoGrass) then {_textValue = _textValue min 48.99;};

_listboxCtrl = (finddisplay 2900) displayCtrl _listbox;
_listboxCtrl ctrlRemoveAllEventHandlers "LBSelChanged";
_sel = [_textValue] call FCLA_Video_Settings_fnc_selTerrainQualityVD;
if (FCLA_VD_allowNoGrass) then {_listboxCtrl lbSetCurSel _sel;} else {_listboxCtrl lbSetCurSel (_sel - 1);};
_listboxCtrl ctrlSetEventHandler ["LBSelChanged",
	format ["[_this select 1, '%1', %2] call FCLA_Video_Settings_fnc_onLBSelChangedVD", _varType, _textCtrl]
];

call compile format ["%1 = %2",_varType, _textValue];
call compile format ["profileNamespace setVariable ['%1',%1]", _varType];

[] call FCLA_Video_Settings_fnc_updateTerrainVD;
