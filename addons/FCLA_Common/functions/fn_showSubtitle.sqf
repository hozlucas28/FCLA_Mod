
/* ----------------------------------------------------------------------------
Function: FCLA_Scripts_fnc_initCustomSubtitle

Description:
    Genera un texto a modo de subtítulo, similar al que se ve en los escenarios
    del dlc Apex.

Arguments:
    _name - nombre del emisor.
		_text - mensaje del emisor.

    _lines - lineas del mensaje del emisor, puede ser más de una separadas por comas.
		_colour - color del nombre del emisor, valores posibles: "SIDE", "VEHICLE", "COMMAND"
             "GROUP", "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR", "OPFOR", "GUER" ó "CIV".
             Con las comillas.
		_timeToHide - Tiempo, por línea, para ocultar el texto una vez mostrado.

Example:
		//Ejemplo de una línea.
		_line = ["[Sdo] Usted", "Hola mundo!, tengo hambre!, esto es un ejemplo de una linea!"];
		[[_line], "SIDE", 5] call FCLA_Scripts_fnc_initCustomSubtitle;

    //Ejemplo de dos lineas.
		_line1 = ["[Cbo] Enemigo", "Esta es mi primer oración!, primer linea!"];
    _line2 = ["[Cbo] Enemigo", "Esta es mi segunda oración!, segunda linea!"];
		[[_line1, _line2], "VEHICLE", 5] call FCLA_Scripts_fnc_initCustomSubtitle;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

_this spawn {
  params ["_lines", "_colour", "_timeToHide"];



  _colourHTML = switch (toUpper _colour) do {
      case "SIDE": {"#00ccff"};
      case "VEHICLE": {"#fbd40b"};
      case "COMMAND": {"#e5e760"};
      case "GROUP": {"#beee7e"};
      case "DIRECT": {"#fffffb"};
      case "CUSTOM": {"#ec5a29"};
      case "SYSTEM": {"#8a8a88"};
      case "BLUFOR": {([WEST, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML};
      case "OPFOR": {([EAST, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML};
      case "GUER": {([INDEPENDENT, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML};
      case "CIV": {([CIVILIAN, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML};
  };

  for "_i" from 0 to (count _lines) - 1 do {
    _nameSpeaker = (_lines select _i) select 0;
    _currentLine = (_lines select _i) select 1;
    _speaker = (_lines select _i) param [2, objNull, [objNull]];

    if !(isNull _speaker) then {_speaker setRandomLip true};
    _handle = [_nameSpeaker, _currentLine, _colourHTML, _timeToHide] spawn {
      params ["_name", "_text", "_colour", "_timeToHide"];
      disableSerialization;

      private "_display";
      titleRsc ["RscDynamicText", "PLAIN"];
      waitUntil {_display = uiNamespace getVariable "BIS_dynamicText"; !(isNull _display)};
      _ctrl = _display displayCtrl 9999;
      uiNamespace setVariable ["BIS_dynamicText", displayNull];
      _ctrlBackground = _display ctrlCreate ["RscText", 99999];
      _w = 0.4 * safeZoneW;
      _x = safeZoneX + (0.5 * safeZoneW - (_w / 2));
      _y = safeZoneY + (0.73 * safeZoneH);
      _h = safeZoneH;
      _ctrl ctrlSetPosition [_x, _y, _w, _h];
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0;

      _text = parseText format ["<t align = 'center' shadow = '2' size = '0.52'><t color = '%1'>" + _name + ":</t> <t color = '#d0d0d0'>" + _text + "</t></t>", _colour];
      _ctrl ctrlSetStructuredText _text;
      _ctrl ctrlSetFade 0;
      _ctrl ctrlCommit 0.5;

      sleep _timeToHide;
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0.5;
      true
    };

    waitUntil {scriptDone _handle};
    if !(isNull _speaker) then {_speaker setRandomLip false};
    sleep 0.5 + 0.5;
  };
  true
};
