
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje de invitacion para formar parte de FCLA.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Verificar servidor.
_serverName = toUpper serverName;
if (_serverName in ["", "SERVIDOR OFICIAL FCLA"]) exitWith {};



//Generar mensaje.
[{
  [{!(player getVariable ["FCLA_Playing_Introduction", false])}, {
    [{
      playsound "FCLA_Notification";
      ["<img align='left' shadow='0' size='2' image='\FCLA_Development\Watermarks\data\FCLA.paa'/> <t align='left' valign='middle'> Unete a FCLA.</t>", -0.702121, 1.22894, 28, 2, 0, 9631] spawn BIS_fnc_dynamicText;
      [parseText "<t font='PuristaBold' align='center' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium' align='center' size='0.997'>Te invitamos a formar parte de nuestra comunidad, ingresa a nuestra pagina oficial en Wix para mas informacion.<br/>Gracias por leer.</t>", [1.10288, 1.20894, 0.6, 1], nil, 28, [2, 2], 0] spawn BIS_fnc_textTiles;
    }, 60] call CBA_fnc_addPerFrameHandler;
  }, [], 300, {
    [{
      playsound "FCLA_Notification";
      ["<img align='left' shadow='0' size='2' image='\FCLA_Development\Watermarks\data\FCLA.paa'/> <t align='left' valign='middle'> Unete a FCLA.</t>", -0.702121, 1.22894, 28, 2, 0, 9631] spawn BIS_fnc_dynamicText;
      [parseText "<t font='PuristaBold' align='center' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium' align='center' size='0.997'>Te invitamos a formar parte de nuestra comunidad, ingresa a nuestra pagina oficial en Wix para mas informacion.<br/>Gracias por leer.</t>", [1.10288, 1.20894, 0.6, 1], nil, 28, [2, 2], 0] spawn BIS_fnc_textTiles;
    }, 60] call CBA_fnc_addPerFrameHandler;
  }] call CBA_fnc_waitUntilAndExecute;
}, [], 2] call CBA_fnc_waitAndExecute;
