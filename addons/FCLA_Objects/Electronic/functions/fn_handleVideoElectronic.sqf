
/* ----------------------------------------------------------------------------
Function: FCLA_Objects_fnc_handleVideoElectronic

Description:
    Genera un trigger, en la posicion de la pantalla enviada, que reproducira
		un video al reconocer a un jugador.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

#define VIDEO_VIDEO "a3\missions_f_exp\video\exp_m06_vintel.ogv"
#define VIDEO_ApexProtocol_Placeholder "a3\missions_f_exp\video\EXP_m06_v01.ogv"



private _screen = param [0, objNull];
private _triggerDetector = createTrigger ["EmptyDetector", _screen, false];

_triggerDetector setTriggerArea [50, 50, 0, false];
_triggerDetector setTriggerActivation ["ANYPLAYER", "PRESENT", true];
_triggerDetector setTriggerStatements ["this",
	format ["
		thisTrigger setVariable ['EH', [missionNamespace, 'BIS_fnc_playVideo_stopped', {['%1', [20, 20]] spawn BIS_fnc_playVideo}] call BIS_fnc_addScriptedEventHandler];
		_screen setObjectTextureGlobal [0, '%1'];
		['%1', [20, 20]] spawn BIS_fnc_playVideo;
	", VIDEO_VIDEO],"
		[missionNamespace, 'BIS_fnc_playVideo_stopped', thisTrigger getVariable ['EH', -1]] call BIS_fnc_removeScriptedEventHandler;
		['', [20, 20]] spawn BIS_fnc_playVideo;
		_screen setObjectTextureGlobal [0, ''];
	"
];
