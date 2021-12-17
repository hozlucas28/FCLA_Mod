
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una introducción animada al comienzo del escenario.
 *
 * Arguments:
 *            0: Título, opcional. <STRING> (default: "")
 *            1: Subtítulo, opcional. <STRING> (default: "")
 *            2: Video introductorio, opcional. <STRING> (default: "")
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *             //Sin video introductorio.
 *             ["Mi título", "subtítulo"] call FCLA_Common_fnc_setIntroduction;
 *
 *             //Con video introductorio.
 *             ["Mi título", "subtítulo", "\FCLA_Data\Videos\Community_Presentation_1.ogv"] call FCLA_Common_fnc_setIntroduction;
 *
 * Note:
 * Se recomienda utilizar esta función en el "initPlayerLocal".
 *
 * Si los argumentos 0 y/o 1 son <""> únicamente se mostrara el video introductorio.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
				["_title", "", [""], 0],
				["_subtitle", "", [""], 0],
				["_introductoryVideo", "", [""], 0]
			 ];



//Verificar argumentos.
_title = toUpper _title;
_subtitle = toLower _subtitle;
if ((_title == "") && (_subtitle == "") && (_introductoryVideo == "")) exitWith {false};



//Guardar argumentos en variables asociados a la misión.
missionNamespace setVariable ["FCLA_Introduction_Title", _title];
missionNamespace setVariable ["FCLA_Introduction_Subtitle", _subtitle];
missionNamespace setVariable ["FCLA_Introduction_Introductory_Video", _introductoryVideo];


//Reproducir introducción.
["CBA_loadingScreenDone", {
  _title = missionNamespace getVariable ["FCLA_Introduction_Title", ""];
  _subtitle = missionNamespace getVariable ["FCLA_Introduction_Subtitle", ""];
	_introductoryVideo = missionNamespace getVariable ["FCLA_Introduction_Introductory_Video", ""];

	[_title, _subtitle, _introductoryVideo] Spawn {
		params ["_title", "_subtitle", "_introductoryVideo"];
		player action ["WeaponOnBack", player];
		cutText ["", "BLACK FADED", 3600, true, false];
		[{[true] call ACE_Common_fnc_disableUserInput;}, [], 0.1] call CBA_fnc_waitAndExecute;

		if ((_title == "") || (_subtitle == "")) exitWith {
			_videoStatus = [_introductoryVideo] spawn BIS_fnc_playVideo;
			waitUntil {scriptDone _videoStatus};
			cutText ["", "BLACK IN", 5, true, false];
			[false] call ACE_Common_fnc_disableUserInput;
		};

		_videoStatus = [_introductoryVideo] spawn BIS_fnc_playVideo;
		waitUntil {scriptDone _videoStatus};
		if (isGameFocused) then {playsound "FCLA_Introduction";};

		Sleep 3;
		[
		 "<img size='10' image='\FCLA_Common\data\FCLA_Squads.jpg'/>",
		 safeZoneX + 0.71, safeZoneY + safeZoneH - 1.5, 4, 4, 0, 789
		] spawn bis_fnc_dynamicText;

		Sleep 10;
		[[
			[_title, "<t align='center' size='1.75' font='PuristaBold'>%1</t><br/>"],
			["(" + _subtitle + ")", "<t align='center' size='1' font='PuristaSemibold'>%1</t>"]
		]] spawn BIS_fnc_typeText;

		sleep 5;
		cutText ["", "BLACK IN", 5, true, false];
		[false] call ACE_Common_fnc_disableUserInput;
	};
}] call CBA_fnc_addEventHandler;
true
