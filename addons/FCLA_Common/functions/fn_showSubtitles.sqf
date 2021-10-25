
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el texto en pantalla, enviado como argumento, a modo de subtítulos.
 *
 * Arguments:
 *            0: Emisor de los subtítulos. <UNIT|OBJECT>
 *
 *            1: Líneas (textos) que se quieren mostrar. <ARRAY OF LINES>
 *                - Primera línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                - Segunda línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                ...
 *
 *            2: Color para el nombre del emisor. <STRING>
 *                # Colores aceptados: "SIDE", "VEHICLE", "COMMAND", "GROUP",
 *                                     "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR",
 *                                     "OPFOR", "GUER" y "CIV".
 *
 *            3: Tiempo (en segundos) para ocultar cada línea, una vez mostrada. <NUMBER>
 *            4: ¿Guardar subtítulos?, opcional. <BOOL> (default: false)
 *
 *            5: Condiciones para mostrar los subtítulos, opcional. <ARRAY>
 *                - ¿Necesita tener una radio corta? <BOOL> (default: false)
 *                - ¿Necesita tener una radio larga? <BOOL> (default: false)
 *                - Mostrar unicamente para el bando... <"All"|"West"|"East"|"Resistance"|"Civilian"> (default: "All")
 *
 * Examples:
 *            //Subtítulo de una línea sin emisor definido, no se guardaran.
 *            _line = ["[Sdo] Usted", "Hola mundo!, esto es un ejemplo de una linea!"];
 *            [objNull, [_line], "SIDE", 5] spawn FCLA_Common_fnc_showSubtitles;
 *
 *            //Subtítulos de dos líneas con emisor definido, se guardaran.
 *            _line1 = ["[Cbo] Enemigo", "Hola mundo!, primer linea!"];
 *            _line2 = ["[Cbo] Enemigo", "Adios mundo!, segunda linea!"];
 *            [Enemigo_1, [_line1, _line2], "OPFOR", 5, true] spawn FCLA_Common_fnc_showSubtitles;
 *
 * Notes:
 * Si los argumentos no son válidos la función no se ejecutara.
 *
 * Si no sea desea definir un emisor asignele le valor: objNull, como se
 * observa en el primer ejemplo.
 *
 * Si ha decidido guardar los subtítulos estos se almacenaran en la variable
 * de tipo objeto "FCLA_Saved_Subtitles", asociada al "missionNamespace".
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

_this spawn {
  params [
          ["_emitter", objNull, [objNull, teamMemberNull], 0],
          ["_lines", [[]], [[]], []],
          ["_emitterColor", "", [""], 0],
          ["_timeToHideEachLine", 0, [0], 0],
          ["_saveSubtitles", false, [true], 0],
          ["_conditions", [false, false, false], [[]], []]
         ];



  //Verificar argumentos.
  _player = call CBA_fnc_currentUnit;
  _needShortRadio = _conditions select 0;
  _needLongRadio = _conditions select 1;
  _selectedSide = _conditions select 2;
  _compatibleConditions = [true, false, "All", "West", "East", "Resistance", "Civilian"];
  _compatibleEmitterColors = ["SIDE", "VEHICLE", "COMMAND", "GROUP", "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR", "OPFOR", "GUER", "CIV"];
  if ((_lines isEqualTo [[]]) || !(_emitterColor in _compatibleEmitterColors) || (_timeToHideEachLine <= 0) || !(_needShortRadio in _compatibleConditions) || !(_needLongRadio in _compatibleConditions) || !(_selectedSide in _compatibleConditions)) exitWith {};


  //Mover labios del emisor.
  if (!isNull _emitter) then {
    if (!(_emitter in allUnits)) exitWith {};
    _emitter setRandomLip true;
  };


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
  for "_i" from 0 to (count _lines) - 1 do {
    if (_emitter getVariable ["FCLA_Hide_Subtitles", false]) exitWith {};
    _handle = [_emitter, _lines, _emitterColor, _timeToHideEachLine, _i] spawn {
      params ["_emitter", "_lines", "_emitterColor", "_timeToHideEachLine", "_i"];
      _currentLine = _lines select _i;
      _emitterName = _currentLine select 0;
      _emitterText = _currentLine select 1;
      disableSerialization;

      private "_display";
      titleRsc ["RscDynamicText", "PLAIN"];
      waitUntil {_display = uiNamespace getVariable "BIS_dynamicText"; !(isNull _display)};
      _ctrl = _display displayCtrl 9999;
      _emitter setVariable ["FCLA_Subtitles_ctrl", _ctrl, true];
      uiNamespace setVariable ["BIS_dynamicText", displayNull];
      _ctrlBackground = _display ctrlCreate ["RscText", 99999];
      _w = 0.4 * safeZoneW;
      _x = safeZoneX + ((0.5 * safeZoneW) - (_w / 2));
      _y = safeZoneY + (0.73 * safeZoneH);
      _h = safeZoneH;
      _ctrl ctrlSetPosition [_x, _y, _w, _h];
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0;

      _emitterText = parseText format ["<t align='center' shadow='2' size='0.52'><t color='%3'>%1: </t><t color='#d0d0d0'>%2</t></t>", _emitterName, _emitterText, _emitterColor];
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
  _emitter setVariable ["FCLA_Hide_Subtitles", nil, true];


  //Detener labios del emisor.
  if (!isNull _emitter) then {
    if (!(_emitter in allUnits)) exitWith {};
    _emitter setRandomLip false;
  };


  //Guardar subtítulos.
  if (!_saveSubtitles) exitWith {};
  missionNamespace setVariable ["FCLA_Saved_Subtitles", [_this select 0, _this select 1, _this select 2, _this select 3], true];
};
