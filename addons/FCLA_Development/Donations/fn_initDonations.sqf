
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje en forma de recordatorio sobre las donaciones al servidor,
 * solo si esta opcion esta activada en el 'addon options'.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Verificar servidor.
_serverName = toUpper serverName;
if (!(_serverName in ["", "SERVIDOR OFICIAL FCLA"])) exitWith {};



//Generar mensaje.
[{
  [{!(player getVariable ["FCLA_Playing_Introduction", false])}, {
    [{
      if (!FCLA_Donations_Message) exitWith {};
      playsound "FCLA_Notification";
      [parseText "<t font='PuristaBold' align='center' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium' align='center' size='0.997'>Si es de su agrado el servidor, recuerden que se mantiene a base de donaciones, sin estas no podriamos seguir jugando.<br/>Gracias por leer.</t>", [1.10288, 1.20894, 0.6, 1], nil, 30, 0.7, 0] spawn BIS_fnc_textTiles;
    }, FCLA_Donations_Message_Delay * 60] call CBA_fnc_addPerFrameHandler;
  }, [], 300, {
    [{
      if (!FCLA_Donations_Message) exitWith {};
      playsound "FCLA_Notification";
      [parseText "<t font='PuristaBold' align='center' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium' align='center' size='0.997'>Si es de su agrado el servidor, recuerden que se mantiene a base de donaciones, sin estas no podriamos seguir jugando.<br/>Gracias por leer.</t>", [1.10288, 1.20894, 0.6, 1], nil, 30, 0.7, 0] spawn BIS_fnc_textTiles;
    }, FCLA_Donations_Message_Delay * 60] call CBA_fnc_addPerFrameHandler;
  }] call CBA_fnc_waitUntilAndExecute;
}, [], 2] call CBA_fnc_waitAndExecute;
