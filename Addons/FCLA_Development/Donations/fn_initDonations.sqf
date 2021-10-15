
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
  if ((!FCLA_Donations_Message) || (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) || !(alive player)) exitWith {};
  playsound "FCLA_Notification";
  [parseText "<t font='PuristaBold' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium'>Si es de su agrado el servidor, recuerden que se mantiene a base de donaciones, sin estas no podriamos seguir jugando.<br/>Gracias por leer.</t><br/>", true, nil, 30, 0.7, 0] spawn BIS_fnc_textTiles;
}, FCLA_Donations_Message_Delay*60] call CBA_fnc_addPerFrameHandler;
