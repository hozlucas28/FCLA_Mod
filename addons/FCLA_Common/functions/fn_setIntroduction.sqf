
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
 *            3: Determina que veran aquellos jugadores que han reproducido la
 *               introducción, pero tuvieron que reconectarse a la partida, opcional. <STRING> (default: "None")
 *						    # Decisiones posibles: "None", "Title_and_subtitle", "Video" y "All".
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *             //Sin video introductorio.
 *             ["Mi título", "subtítulo"] call FCLA_Common_fnc_setIntroduction;
 *
 *             //Con video introductorio y al reconectarse se mostrara únicamente el título y subtítulo.
 *             ["Mi título", "subtítulo", "\FCLA_Data\Videos\Community_Presentation_1.ogv", "Title_and_subtitle"] call FCLA_Common_fnc_setIntroduction;
 *
 * Notes:
 * Si los argumentos 0 y/o 1 son <""> únicamente se mostrara el video introductorio.
 *
 * Cuando la introducción comienza se le asigna al jugador la variable de tipo
 * objeto "FCLA_Playing_Introduction" con el valor <true>, una vez que finaliza
 * esta variable es borrada pasando a tener el valor <nil>.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
				["_title", "", [""], 0],
				["_subtitle", "", [""], 0],
				["_introductoryVideo", "", [""], 0],
				["_showOnReconnect", "None", [""], 0]
			 ];



//Verificar argumentos.
_title = toUpper _title;
_subtitle = toLower _subtitle;
_showOnReconnect = toUpper _showOnReconnect;
_acceptedDecisions = ["NONE", "TITLE_AND_SUBTITLE", "VIDEO", "ALL"];
if (((_title == "") && (_subtitle == "") && (_introductoryVideo == "")) || !(_showOnReconnect in _acceptedDecisions)) exitWith {false};



//Guardar argumentos en variables asociados a la misión.
missionNamespace setVariable ["FCLA_Introduction_Title", _title];
missionNamespace setVariable ["FCLA_Introduction_Subtitle", _subtitle];
missionNamespace setVariable ["FCLA_Show_On_Reconnect", _showOnReconnect];
missionNamespace setVariable ["FCLA_Introductory_Video", _introductoryVideo];


//Reproducir introducción.
["CBA_loadingScreenDone", {
  _title = missionNamespace getVariable ["FCLA_Introduction_Title", ""];
  _subtitle = missionNamespace getVariable ["FCLA_Introduction_Subtitle", ""];
	_showOnReconnect = missionNamespace getVariable ["FCLA_Show_On_Reconnect", "NONE"];
	_introductoryVideo = missionNamespace getVariable ["FCLA_Introductory_Video", ""];


	[_title, _subtitle, _introductoryVideo, _showOnReconnect] Spawn {
		params ["_title", "_subtitle", "_introductoryVideo", "_showOnReconnect"];
		_playerUID = getPlayerUID player;
		_introductionPlayedPlayers = missionNamespace getVariable ["FCLA_Introduction_Players", []];
		_findedUID = _introductionPlayedPlayers find _playerUID;

		if (_findedUID <= -1) then {
			player action ["WeaponOnBack", player];
			cutText ["", "BLACK FADED", 3600, true, false];
			player setVariable ["FCLA_Playing_Introduction", true, true];
			[{[true] call ACE_Common_fnc_disableUserInput;}, [], 0.1] call CBA_fnc_waitAndExecute;

			if ((_title == "") || (_subtitle == "")) exitWith {
				_videoStatus = [_introductoryVideo] spawn BIS_fnc_playVideo;
				waitUntil {scriptDone _videoStatus};
				cutText ["", "BLACK IN", 3, true, false];
				[false] call ACE_Common_fnc_disableUserInput;
				player setVariable ["FCLA_Playing_Introduction", nil, true];
				[{
					"dynamicBlur" ppEffectEnable true;
					"dynamicBlur" ppEffectAdjust [7];
					"dynamicBlur" ppEffectCommit 0;
					"dynamicBlur" ppEffectAdjust [0];
					"dynamicBlur" ppEffectCommit 5;
				}, [], 0.1] call CBA_fnc_waitAndExecute;
			};

			_videoStatus = [_introductoryVideo] spawn BIS_fnc_playVideo;
			waitUntil {scriptDone _videoStatus};
			if (isGameFocused) then {playsound "FCLA_Introduction";};

			sleep 3;
			[
			 "<img size='10' image='\FCLA_Common\data\FCLA_Squads.jpg'/>",
			 safeZoneX + 0.71, safeZoneY + safeZoneH - 1.5, 4, 4, 0, 789
			] spawn bis_fnc_dynamicText;

			sleep 10;
			[[
				[_title, "<t align='center' size='1.75' font='PuristaBold'>%1</t><br/>"],
				["(" + _subtitle + ")", "<t align='center' size='1' font='PuristaSemibold'>%1</t>"]
			]] spawn BIS_fnc_typeText;

			sleep 5;
			cutText ["", "BLACK IN", 3, true, false];
			[false] call ACE_Common_fnc_disableUserInput;
			[{
				"dynamicBlur" ppEffectEnable true;
				"dynamicBlur" ppEffectAdjust [7];
				"dynamicBlur" ppEffectCommit 0;
				"dynamicBlur" ppEffectAdjust [0];
				"dynamicBlur" ppEffectCommit 5;
			}, [], 0.1] call CBA_fnc_waitAndExecute;

			_introductionPlayedPlayers pushBack _playerUID;
			player setVariable ["FCLA_Playing_Introduction", nil, true];
			missionNamespace setVariable ["FCLA_Introduction_Players", _introductionPlayedPlayers];
		} else {
			_title = if (_showOnReconnect in ["TITLE_AND_SUBTITLE", "ALL"]) then {_title;} else {"";};
		  _subtitle = if (_showOnReconnect in ["TITLE_AND_SUBTITLE", "ALL"]) then {_subtitle;} else {"";};
			_introductoryVideo = if (_showOnReconnect in ["VIDEO", "ALL"]) then {_introductoryVideo} else {"";};
			if (_showOnReconnect == "NONE") exitWith {};

			player action ["WeaponOnBack", player];
			cutText ["", "BLACK FADED", 3600, true, false];
			player setVariable ["FCLA_Playing_Introduction", true, true];
			[{[true] call ACE_Common_fnc_disableUserInput;}, [], 0.1] call CBA_fnc_waitAndExecute;

			if ((_title == "") || (_subtitle == "")) exitWith {
				_videoStatus = [_introductoryVideo] spawn BIS_fnc_playVideo;
				waitUntil {scriptDone _videoStatus};
				cutText ["", "BLACK IN", 3, true, false];
				[false] call ACE_Common_fnc_disableUserInput;
				player setVariable ["FCLA_Playing_Introduction", nil, true];
				[{
					"dynamicBlur" ppEffectEnable true;
					"dynamicBlur" ppEffectAdjust [7];
					"dynamicBlur" ppEffectCommit 0;
					"dynamicBlur" ppEffectAdjust [0];
					"dynamicBlur" ppEffectCommit 5;
				}, [], 0.1] call CBA_fnc_waitAndExecute;
			};

			_videoStatus = [_introductoryVideo] spawn BIS_fnc_playVideo;
			waitUntil {scriptDone _videoStatus};
			if (isGameFocused) then {playsound "FCLA_Introduction";};

			sleep 3;
			[
			 "<img size='10' image='\FCLA_Common\data\FCLA_Squads.jpg'/>",
			 safeZoneX + 0.71, safeZoneY + safeZoneH - 1.5, 4, 4, 0, 789
			] spawn bis_fnc_dynamicText;

			sleep 10;
			[[
			  [_title, "<t align='center' size='1.75' font='PuristaBold'>%1</t><br/>"],
			  ["(" + _subtitle + ")", "<t align='center' size='1' font='PuristaSemibold'>%1</t>"]
			]] spawn BIS_fnc_typeText;

			sleep 5;
			cutText ["", "BLACK IN", 3, true, false];
			[false] call ACE_Common_fnc_disableUserInput;
			player setVariable ["FCLA_Playing_Introduction", nil, true];
			[{
				"dynamicBlur" ppEffectEnable true;
				"dynamicBlur" ppEffectAdjust [7];
				"dynamicBlur" ppEffectCommit 0;
				"dynamicBlur" ppEffectAdjust [0];
				"dynamicBlur" ppEffectCommit 5;
			}, [], 0.1] call CBA_fnc_waitAndExecute;
		};
	};
}] call CBA_fnc_addEventHandler;
true
