
/* ----------------------------------------------------------------------------
Function: FCLA_Scripts_fnc_initCustomSubtitle

Description:
    Genera un texto a modo de subtítulo, similar al que se ve en los escenarios
    del dlc Apex.

Parameters:
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

Public: [Si]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_lines", "_colour", "_timeToHide"];



[_lines, _colour, _timeToHide] spawn {
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
    _handle = [_nameSpeaker, _currentLine, _colourHTML, _timeToHide] spawn FCLA_Scripts_fnc_showCustomSubtitle;

    waitUntil {scriptDone _handle};
    if !(isNull _speaker) then {_speaker setRandomLip false};
    sleep 0.5 + 0.5;
  };
  true
};
