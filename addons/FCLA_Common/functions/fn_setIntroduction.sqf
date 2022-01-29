
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
if (isNil "FCLA_Show_On_Reconnect") then {["FCLA_Show_On_Reconnect", _showOnReconnect] call CBA_fnc_publicVariable;} else {FCLA_Show_On_Reconnect;};
if (isNil "FCLA_Introductory_Video") then {["FCLA_Introductory_Video", _introductoryVideo] call CBA_fnc_publicVariable;} else {FCLA_Introductory_Video;};
if (isNil "FCLA_Introduction_Title") then {["FCLA_Introduction_Title", _title] call CBA_fnc_publicVariable;} else {FCLA_Introduction_Title;};
if (isNil "FCLA_Introduction_Subtitle") then {["FCLA_Introduction_Subtitle", _subtitle] call CBA_fnc_publicVariable;} else {FCLA_Introduction_Subtitle;};


//Reproducir introducción.
["CBA_loadingScreenDone", {
	[] Spawn {
		_playerUID = getPlayerUID player;
		_playedIntroductionPlayers = if (isNil "FCLA_Played_Introduction_Players") then {[];} else {FCLA_Played_Introduction_Players;};
		_findedUID = _playedIntroductionPlayers find _playerUID;

		if (_findedUID <= -1) then {
			player action ["WeaponOnBack", player];
			cutText ["", "BLACK FADED", 3600, true, false];
			player setVariable ["FCLA_Playing_Introduction", true, true];
			[{[true] call ACE_Common_fnc_disableUserInput;}, [], 0.1] call CBA_fnc_waitAndExecute;
			["FCLA (log): ENTRO 1"] call ACE_Common_fnc_serverLog;

			if ((FCLA_Introduction_Title == "") || (FCLA_Introduction_Subtitle == "")) exitWith {
				_videoStatus = [FCLA_Introductory_Video] spawn BIS_fnc_playVideo;
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

			_videoStatus = [FCLA_Introductory_Video] spawn BIS_fnc_playVideo;
			[format ["FCLA (log): %1", FCLA_Introductory_Video]] call ACE_Common_fnc_serverLog;
			waitUntil {scriptDone _videoStatus};
			playsound "FCLA_Introduction";

			sleep 3;
			[
			 "<img size='10' image='\FCLA_Common\data\FCLA_Squads.jpg'/>",
			 safeZoneX + 0.71, safeZoneY + safeZoneH - 1.5, 4, 4, 0, 789
			] spawn bis_fnc_dynamicText;

			sleep 10;
			[[
				[FCLA_Introduction_Title, "<t align='center' size='1.75' font='PuristaBold'>%1</t><br/>"],
				["(" + FCLA_Introduction_Subtitle + ")", "<t align='center' size='1' font='PuristaSemibold'>%1</t>"]
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

			_playedIntroductionPlayers pushBack _playerUID;
			player setVariable ["FCLA_Playing_Introduction", nil, true];
			["FCLA_Played_Introduction_Players", _playedIntroductionPlayers] call CBA_fnc_publicVariable;
		} else {
			_title = if (FCLA_Show_On_Reconnect in ["TITLE_AND_SUBTITLE", "ALL"]) then {FCLA_Introduction_Title;} else {"";};
		  _subtitle = if (FCLA_Show_On_Reconnect in ["TITLE_AND_SUBTITLE", "ALL"]) then {FCLA_Introduction_Subtitle;} else {"";};
			_introductoryVideo = if (FCLA_Show_On_Reconnect in ["VIDEO", "ALL"]) then {FCLA_Introductory_Video;} else {"";};
			if (FCLA_Show_On_Reconnect == "NONE") exitWith {};

			player action ["WeaponOnBack", player];
			cutText ["", "BLACK FADED", 3600, true, false];
			player setVariable ["FCLA_Playing_Introduction", true, true];
			[{[true] call ACE_Common_fnc_disableUserInput;}, [], 0.1] call CBA_fnc_waitAndExecute;
			["FCLA (log): ENTRO 2"] call ACE_Common_fnc_serverLog;

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
			[format ["FCLA (log): %1", _introductoryVideo]] call ACE_Common_fnc_serverLog;
			waitUntil {scriptDone _videoStatus};
			playsound "FCLA_Introduction";

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
