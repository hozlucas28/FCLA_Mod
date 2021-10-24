
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el texto en pantalla a modo de subtítulos.
 *
 * Arguments:
 *            0: Líneas (textos) que se quieren mostrar ó ¿Ocultar subtítulos?. <ARRAY OF LINES | BOOL>
 *                - Primera línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                - Segunda línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                ...
 *            1: Color para el nombre del emisor. <STRING>
 *                # Colores aceptados: "SIDE", "VEHICLE", "COMMAND", "GROUP",
 *                                     "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR",
 *                                     "OPFOR", "GUER" y "CIV".
 *            2: Tiempo (en segundos) para ocultar cada línea, una vez mostrada. <NUMBER>
 *            3: ¿Guardar subtítulos?, opcional. <BOOL> (default: false)
 *
 * Examples:
 *            //Subtítulo de una línea, no se guardaran.
 *            _line = ["[Sdo] Usted", "Hola mundo!, esto es un ejemplo de una linea!"];
 *            [[_line], "SIDE", 5] spawn FCLA_Common_fnc_showSubtitles;
 *
 *            //Subtítulos de dos líneas, se guardaran.
 *            _line1 = ["[Cbo] Enemigo", "Hola mundo!, primer linea!"];
 *            _line2 = ["[Cbo] Enemigo", "Adios mundo!, segunda linea!"];
 *            [[_line1, _line2], "OPFOR", 5, true] spawn FCLA_Common_fnc_showSubtitles;
 *
 *            //Ocultar subtítulos que se estan mostrando.
 *            [false] spawn FCLA_Common_fnc_showSubtitles;
 *
 * Note:
 * Si los argumentos no son válidos la función no se ejecutara.
 * Si ha decidido guardar los subtítulos estos se almacenaran en la variable de
 * tipo objeto "FCLA_Saved_Subtitles".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

_this spawn {
  params [
          ["_lines", [[]], [[], true], []],
          ["_emitterColor", "SIDE", [""], 0],
          ["_timeToHideEachLine", 1, [0], 0],
          ["_saveSubtitles", false, [true], 0]
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


  //Mostrar/Ocultar subtítulos.
  _loopRepeats = if ((typeName _lines) == "ARRAY") then {count _lines} else {1};
  for "_i" from 0 to _loopRepeats - 1 do {
    _handle = [_lines, _emitterColor, _timeToHideEachLine, _i] spawn {
      params ["_lines", "_emitterColor", "_timeToHideEachLine", "_i"];
      _currentLine = if ((typeName _lines) == "ARRAY") then {_lines select _i;};
      _emitterName = if ((typeName _lines) == "ARRAY") then {_currentLine select 0;};
      _emitterText = if ((typeName _lines) == "ARRAY") then {_currentLine select 1;};
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

      if ((typeName _lines) == "BOOL") then {
        _ctrl ctrlSetStructuredText parseText "";
        _saveSubtitles = false;
      } else {
        _emitterText = parseText format ["<t align='center' shadow='2' size='0.52'><t color='%3'>%1: </t><t color='#d0d0d0'>%2</t></t>", _emitterName, _emitterText, _emitterColor];
        _ctrl ctrlSetStructuredText _emitterText;
      };

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


  //Guardar subtítulos.
  if (!_saveSubtitles) exitWith {};
  missionNamespace setVariable ["FCLA_Saved_Subtitles", [_this select 0, _this select 1, _this select 2], true];
};
