
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje en forma de recordatorio sobre las donaciones al servidor,
 * solo si esta opción esta activada en el 'addon options'.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

[{
  [{
    _isAlive = alive player;
    _notPlayingIntroduction = !(uiNamespace getVariable ["FCLA_Introduction_Status", false]);
    _notPlayingIntroductionVideo = !(uiNamespace getVariable ["FCLA_Introduction_Video_Status", false]);
    (FCLA_Donations_Message) && (!isGamePaused) && (isGameFocused) && (_isAlive) && (_notPlayingIntroduction) && (_notPlayingIntroductionVideo);
  }, {
    playsound "FCLA_Notification";
    [parseText "<t font='PuristaBold' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium'>Si es de su agrado el servidor, recuerden que se mantiene a base de donaciones, sin estas no podriamos seguir jugando.<br/>Gracias por leer.</t><br/>", true, nil, 30, 0.7, 0] spawn BIS_fnc_textTiles;
  }, [], 60, {}] call CBA_fnc_waitUntilAndExecute;
}, FCLA_Donations_Message_Delay * 60] call CBA_fnc_addPerFrameHandler;
