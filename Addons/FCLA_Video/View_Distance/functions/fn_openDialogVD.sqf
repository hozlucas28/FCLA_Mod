
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_openDialogVD

Public: [No]
---------------------------------------------------------------------------- */

[] spawn {
	if (missionNamespace getVariable ["FCLA_VD_loadingDialog",false]) exitWith {true};

	if (isNull (findDisplay 2900)) then {
		_dialog = createDialog "FCLA_VD_dialog";
		if (!_dialog) exitWith {systemChat "Distancia de Visión: error, no se pudo abrir el dialog."};
	};

	disableSerialization;
	FCLA_VD_loadingDialog = true;

	{ctrlSetText _x;} forEach [[1006, str round FCLA_VD_foot],[1007, str round FCLA_VD_footObj],[1013, str round FCLA_VD_car],[1014, str round FCLA_VD_carObj],[1017, str round FCLA_VD_air],[1018, str round FCLA_VD_airObj],[1400, str FCLA_VD_footTerrain],[1401, str FCLA_VD_carTerrain],[1402, str FCLA_VD_airTerrain]];

	{
		sliderSetRange [_x select 0, 0, _x select 2];
		sliderSetRange [_x select 3, 0, (_x select 5) min (_x select 1)];
		sliderSetSpeed [_x select 0, 500, 500];
		sliderSetSpeed [_x select 3, 500, 500];
		sliderSetPosition [_x select 0, _x select 1];
		sliderSetPosition [_x select 3, (_x select 4) min (_x select 1)];
	} forEach [[1900,FCLA_VD_foot,FCLA_VD_maxView,1901,FCLA_VD_footObj,FCLA_VD_maxObj],[1902,FCLA_VD_car,FCLA_VD_maxView,1903,FCLA_VD_carObj,FCLA_VD_maxObj],[1904,FCLA_VD_air,FCLA_VD_maxView,1905,FCLA_VD_airObj,FCLA_VD_maxObj]];

	{
		_ctrl = ((findDisplay 2900) displayCtrl (_x select 0));

		_textDisabled = "Desactivado";
		_ctrl lbAdd _textDisabled;

		_textDynamic = "Dinamica";
		_ctrl lbAdd _textDynamic;

		_textFov = "Niebla";
		_ctrl lbAdd _textFov;

		_mode = call compile ("FCLA_VD_" + (_x select 1) + "SyncMode");
		_ctrl lbSetCurSel _mode;

		_handle = _ctrl ctrlSetEventHandler ["LBSelChanged",
			format ["[_this select 1, '%1',%2,%3,%4] call FCLA_Video_Settings_fnc_onLBSelChanged_syncmodeVD", _x select 1, _x select 2, _x select 3, _x select 4]
		];
	} forEach [[1404,"foot",1410,1901,1007], [1406,"car",1409,1903,1014], [1408,"air",1411,1905,1018]];

	{
		_ctrl = _x select 0;
		_mode = call compile ("FCLA_VD_" + (_x select 1) + "SyncMode");

		switch (_mode) do {
			case 1: {
				_percentage = call compile ("FCLA_VD_" + (_x select 1) + "SyncPercentage");
				ctrlSetText [_ctrl, format ["%1",_percentage * 100] + "%"];
				ctrlEnable [_ctrl, true];
			};
			default {ctrlEnable [_ctrl, false];};
		};

		_ctrlDisplay = (findDisplay 2900) displayCtrl _ctrl;
		_handle = _ctrlDisplay ctrlSetEventHandler ["keyDown", format ["[_this select 0, '%1',%2,%3] call FCLA_Video_Settings_fnc_onEBinput_syncmodeVD", _x select 1, _x select 2, _x select 3]];
	} forEach [[1410,"foot",1901,1007], [1409,"car",1903,1014], [1411,"air",1905,1018]];

	{
		_ctrl = ((findDisplay 2900) displayCtrl (_x select 0));
		if (FCLA_VD_allowNoGrass) then {
			_textLow = "Bajo";
			_ctrl lbAdd _textLow;
		};

		_textStandard = "Estandar";
		_ctrl lbAdd _textStandard;
		_textHigh = "Alto";
		_ctrl lbAdd _textHigh;
		_textVeryHigh = "Muy Alto";
		_ctrl lbAdd _textVeryHigh;
		_textUltra = "Ultra";
		_ctrl lbAdd _textUltra;

		_sel = [_x select 1] call FCLA_Video_Settings_fnc_selTerrainQualityVD;
		if (FCLA_VD_allowNoGrass) then {_ctrl lbSetCurSel _sel;} else {_ctrl lbSetCurSel (_sel - 1);};
	} forEach [[1500,FCLA_VD_footTerrain],[1501,FCLA_VD_carTerrain],[1502,FCLA_VD_airTerrain]];

	{
		_ctrl = ((findDisplay 2900) displayCtrl (_x select 0));
		_handle = _ctrl ctrlSetEventHandler ["LBSelChanged",
			format ["[_this select 1, '%1', %2] call FCLA_Video_Settings_fnc_onLBSelChangedVD", _x select 1, _x select 2]
		];
	} forEach [[1500,"FCLA_VD_footTerrain",1400],[1501,"FCLA_VD_carTerrain",1401],[1502,"FCLA_VD_airTerrain",1402]];

	if (FCLA_VD_footSyncMode isEqualTo 1) then {
		ctrlEnable [1901,false];
		ctrlEnable [1007,false];
	} else {
		ctrlEnable [1901,true];
		ctrlEnable [1007,true];
	};

	if (FCLA_VD_carSyncMode isEqualTo 1) then {
		ctrlEnable [1903,false];
		ctrlEnable [1014,false];
	} else {
		ctrlEnable [1903,true];
		ctrlEnable [1014,true];
	};

	if (FCLA_VD_airSyncMode isEqualTo 1) then {
		ctrlEnable [1905,false];
		ctrlEnable [1018,false];
	} else {
		ctrlEnable [1905,true];
		ctrlEnable [1018,true];
	};
	FCLA_VD_loadingDialog = false;
};
