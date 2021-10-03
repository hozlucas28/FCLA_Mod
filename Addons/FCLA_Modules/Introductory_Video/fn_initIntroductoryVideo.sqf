
/* ----------------------------------------------------------------------------
Function: FCLA_Modules_fnc_initIntroductoryVideo

Description:
		Reproduce un video, según la ruta guardada en la variable del módulo, al
    comienzo de la misión. Función llamada desde el módulo 'Video de introducción'.

Public: [No]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_module","_synchronizedUnits","_isActivated"];
if (!(_isActivated)) exitWith {};



//Evita que se ejecute el video de presentación de la comunidad.
FCLA_Skip_Presentation_Video_addonOption = true;
publicVariable "FCLA_Skip_Presentation_Video_addonOption";


_path = _module getVariable "IV_Path";
_duration = _module getVariable "IV_Duration";
if (_duration <= 0) exitWith {
  [] spawn {
    Sleep 1;
    ["Atributo 'Duración' no definido.", "Módulo - Video de introducción:", true, "CERRAR"] spawn BIS_fnc_guiMessage;
  };
};

cutText ["", "BLACK OUT"];
_path call BIS_fnc_EXP_camp_playTimelineVideo;
Sleep (_duration + 0.5);
cutText ["", "BLACK IN", 5];
