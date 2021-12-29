
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje en forma de recordatorio sobre las donaciones al servidor,
 * solo si esta opción esta activada en el 'addon options'.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

if (serverName != "Servidor Oficial FCLA") exitWith {};
[{
  _playingIntroduction = uiNamespace getVariable ["FCLA_Introduction_Status", false];
  _playingIntroductionVideo = uiNamespace getVariable ["FCLA_Introduction_Video_Status", false];
  if ((!FCLA_Donations_Message) || (_playingIntroduction) || (_playingIntroductionVideo)) exitWith {};
  playsound "FCLA_Notification";
  [parseText "<t font='PuristaBold' align='center' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium' align='center'>Si es de su agrado el servidor, recuerden que se mantiene a base de donaciones, sin estas no podriamos seguir jugando.<br/>Gracias por leer.</t><br/>", [safeZoneX + 1.815, safeZoneY + safeZoneH - 0.2, 0.6, 1], nil, 30, 0.7, 0] spawn BIS_fnc_textTiles;
}, FCLA_Donations_Message_Delay * 60] call CBA_fnc_addPerFrameHandler;
