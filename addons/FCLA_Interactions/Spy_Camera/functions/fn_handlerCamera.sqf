
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_handlerCamera

Description:
    Genera "ui" para mover la visión de la cámara, sin uso en partícular más haya del
		de la cámara espía. NO REUTILIZAR, POSIBLES ERRORES FATALES.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
private ["_keyNightVision", "_keysBanned", "_keyForward", "_keyBack", "_keyLeft", "_keyRight", "_mode", "_input", "_NVGstate", "_camTarget", "_pos", "_relDir"];



//Variable locales.
_keyNightVision	= actionKeys "NightVision";
_keysBanned = [1,15];
_keyForward	= actionKeys "carForward";
_keyBack = actionKeys "carBack";
_keyLeft = actionKeys "carLeft";
_keyRight	= actionKeys "carRight";
_mode = _this select 0;
_input = _this select 1;
_cam = player getVariable ["Spy_Camera_Camera",objNull];
_camTarget = _cam getVariable ["Spy_Camera_Target",[0,2,0]];


if (isnil "_cam") then {player setVariable ["Spy_Camera_DesactivateCamera",true]};


if (_mode == "keydown") then {
	_key = _input select 1;

	//Cambiar a visión nocturna.
	if (_key in _keysBanned) then {player setVariable ["Spy_Camera_DesactivateCamera",true]};

	//Cambiar a visión nocturna.
	if (_key in _keyNightVision) then	{
		playSound "FCLA_Switch_Camera";
		_NVGstate = !(player getVariable ["Spy_Camera_isNVG", false]);
		"uavrtt" setPiPEffect (if (_NVGstate) then {[1]} else {[0]});
		player setVariable ["Spy_Camera_isNVG", _NVGstate];
	};

	//Al presionar 'W'.
	if (_key in _keyForward) then	{
		_camTarget set [2,(_camTarget select 2)+0.03];
		_cam setVariable ["Spy_Camera_Target",_camTarget];
		_pos = _cam modelToWorld _camTarget;
		if (((_pos select 2) - ((getpos _cam) select 2)) < 1.5) then {
			_cam camSetTarget _pos;
			if (player getVariable ["Spy_Camera_NVG_Sound_Time",time] <= time) then {
				playsound ["FCLA_Digital_Zoom",true];
				player setVariable ["Spy_Camera_NVG_Sound_Time",time+0.11]
			};
		};
	};

	//Al presionar 'S'.
	if (_key in _keyBack) then {
		_camTarget set [2,(_camTarget select 2)-0.03];
		_cam setVariable ["Spy_Camera_Target",_camTarget];
		_pos = _cam modelToWorld _camTarget;
		if (((_pos select 2) - ((getpos _cam) select 2)) > -1.5) then	{
			_cam camSetTarget _pos;
			if (player getVariable ["Spy_Camera_NVG_Sound_Time",time] <= time) then {
				playsound ["FCLA_Digital_Zoom", true];
				player setVariable ["Spy_Camera_NVG_Sound_Time",time+0.11]
			};
		}
	};

	//Al presionar 'D'.
	if (_key in _keyRight) then {
		_camTarget set [0,(_camTarget select 0)+0.03];
		_cam setVariable ["Spy_Camera_Target",_camTarget];
		_pos = _cam modelToWorld _camTarget;
		_relDir = [player,_pos] call BIS_fnc_relativeDirTo;
		if ( _relDir > 325 || _relDir < 35) then {
			_cam camSetTarget _pos;
			if (player getVariable ["Spy_Camera_NVG_Sound_Time",time] <= time) then {
				playsound ["FCLA_Digital_Zoom",true];
				player setVariable ["Spy_Camera_NVG_Sound_Time",time+0.11]
			};
		};
	};

	//Al presionar 'A'.
	if (_key in _keyLeft) then {
		_camTarget set [0,(_camTarget select 0)-0.03];
		_cam setVariable ["Spy_Camera_Target",_camTarget];
		_pos = _cam modelToWorld _camTarget;
		_relDir = [player,_pos] call BIS_fnc_relativeDirTo;
		if ( _relDir > 325 || _relDir < 35) then {
			_cam camSetTarget _pos;
			if (player getVariable ["Spy_Camera_NVG_Sound_Time",time] <= time) then {
				playsound ["FCLA_Digital_Zoom",true];
				player setVariable ["Spy_Camera_NVG_Sound_Time",time+0.11]
			};
		};
	};
	 _cam camCommit 0;
};
