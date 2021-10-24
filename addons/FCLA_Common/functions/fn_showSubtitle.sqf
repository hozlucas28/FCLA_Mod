
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el texto en pantalla a modo de subtítulos.
 *
 * Arguments:
 *            0: Líneas (textos) que se quieren mostrar. <ARRAY OF LINES>
 *                - Primera línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                - Segunda línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                ...
 *            1: Color para el nombre del emisor. <STRING>
 *                # Colores aceptados: "SIDE", "VEHICLE", "COMMAND", "GROUP",
 *                                     "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR",
 *                                     "OPFOR", "GUER" y "CIV".
 *            2: Tiempo (en segundos) para ocultar cada línea, una
 *               vez mostrada. <NUMBER>
 *
 * Examples:
 *            //Ejemplo de una línea.
 *            _line = ["[Sdo] Usted", "Hola mundo!, esto es un ejemplo de una linea!"];
 *            [[_line], "SIDE", 5] spawn FCLA_Common_fnc_showSubtitles;
 *
 *            //Ejemplo de dos líneas.
 *            _line1 = ["[Cbo] Enemigo", "Hola mundo!, primer linea!"];
 *            _line2 = ["[Cbo] Enemigo", "Adios mundo!, segunda linea!"];
 *            [[_line1, _line2], "OPFOR", 5] spawn FCLA_Common_fnc_showSubtitles;
 *
 * Note:
 * Si los argumentos no son válidos la función no se ejecutara.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

_this spawn {
  params [
          ["_lines", [[]], [[]], []],
          ["_emitterColor", "", [""], 0],
          ["_timeToHideEachLine", 0, [0], 0]
         ];



  //Verificar argumentos.
  _compatibleEmitterColors = ["SIDE", "VEHICLE", "COMMAND", "GROUP", "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR", "OPFOR", "GUER", "CIV"];
  if ((_lines isEqualTo [[]]) || !(_emitterColor in _compatibleEmitterColors) || (_timeToHideEachLine <= 0)) exitWith {};


  //Convertir color al formato HTML.
  _emitterColor = switch (toUpper _emitterColor) do {
    case "SIDE": {"#00ccff"};
    case "VEHICLE": {"#fbd40b"};
    case "COMMAND": {"#e5e760"};
    case "GROUP": {"#beee7e"};
    case "DIRECT": {"#fffffb"};
    case "CUSTOM": {"#ec5a29"};
    case "SYSTEM": {"#8a8a88"};
    case "BLUFOR": {([West, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "OPFOR": {([East, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "GUER": {([Independent, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "CIV": {([Civilian, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
  };


  //Mostrar líneas.
  for "_i" from 0 to (count _lines) - 1 do {
    _currentLine = _lines select _i;
    _emitterName = _currentLine select 0;
    _emitterText = _currentLine select 1;
    if ("" in _currentLine) exitWith {};

    _handle = [_emitterName, _emitterText, _emitterColor, _timeToHideEachLine] spawn {
      params ["_emitterName", "_emitterText", "_emitterColor", "_timeToHideEachLine"];
      disableSerialization;

      private "_display";
      titleRsc ["RscDynamicText", "PLAIN"];
      waitUntil {_display = uiNamespace getVariable "BIS_dynamicText"; !(isNull _display)};
      _ctrl = _display displayCtrl 9999;
      uiNamespace setVariable ["BIS_dynamicText", displayNull];
      _ctrlBackground = _display ctrlCreate ["RscText", 99999];
      _w = 0.4 * safeZoneW;
      _x = safeZoneX + ((0.5 * safeZoneW) - (_w / 2));
      _y = safeZoneY + (0.73 * safeZoneH);
      _h = safeZoneH;
      _ctrl ctrlSetPosition [_x, _y, _w, _h];
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0;

      _emitterText = parseText format ["<t align = 'center' shadow = '2' size = '0.52'><t color = '%1'>" + _emitterName + ":</t> <t color = '#d0d0d0'>" + _emitterText + "</t></t>", _emitterColor];
      _ctrl ctrlSetStructuredText _emitterText;
      _ctrl ctrlSetFade 0;
      _ctrl ctrlCommit 0.5;

      sleep _timeToHideEachLine;
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0.5;
      true
    };

    waitUntil {scriptDone _handle};
    sleep 0.5;
  };
};
