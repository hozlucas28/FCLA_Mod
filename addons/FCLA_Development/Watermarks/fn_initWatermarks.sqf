
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje de invitación para formar parte de FCLA.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

if (serverName in ["", "Servidor Oficial FCLA"]) exitWith {};
[{
  _playingIntroduction = uiNamespace getVariable ["FCLA_Introduction_Status", false];
  _playingIntroductionVideo = uiNamespace getVariable ["FCLA_Introduction_Video_Status", false];
  if ((_playingIntroduction) || (_playingIntroductionVideo)) exitWith {};
  playsound "FCLA_Notification";
  ["<img align='left' shadow='0' size='2' image='\FCLA_Development\Watermarks\data\FCLA.paa'/> <t align='left' valign='middle'> Unete a FCLA.</t>", safeZoneX + 0.01, safeZoneY + safeZoneH - 0.18, 28, 2, 0, 9631] spawn BIS_fnc_dynamicText;
  [parseText "<t font='PuristaBold' align='center' size='1.5' color='#58D68D'>| Comunidad FCLA |</t><br/><t font='PuristaMedium' align='center'>Te invitamos a formar parte de nuestra comunidad, ingresa a nuestra página oficial en Wix para más información.<br/>Gracias por leer.</t><br/>", [safeZoneX + 1.815, safeZoneY + safeZoneH - 0.2, 0.6, 1], nil, 28, [2, 2], 0] spawn BIS_fnc_textTiles;
}, 60] call CBA_fnc_addPerFrameHandler;
