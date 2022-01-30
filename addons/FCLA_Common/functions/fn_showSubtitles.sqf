
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una serie de mensajes a modo de subtítulos, según los argumentos enviados.
 *
 * Arguments:
 *            0: Emisor de los mensajes/subtítulos. <UNIT|OBJECT>
 *
 *            1: Línea/s (subtítulo/s) que se quiere/n mostrar. <ARRAY OF LINE/S>
 *                - Primera línea con el nombre del emisor y subtítulo a mostrar. <ARRAY OF STRINGS>
 *                - Segunda línea con el nombre del emisor y subtítulo a mostrar. <ARRAY OF STRINGS>
 *                ...
 *
 *            2: Color para el nombre del emisor. <STRING>
 *                # Colores aceptados: "Side", "Vehicle", "Command", "Group",
 *                                     "Direct", "System", "Blufor",
 *                                     "Opfor", "Independant" y "Civilian".
 *
 *            3: Tiempo (en segundos) para ocultar cada línea, una vez mostrada. <NUMBER>
 *
 *            4: Condiciones para mostrar los subtítulos, opcional. <ARRAY>
 *                - ¿Se necesita tener una radio de onda corta? <BOOL> (default: false)
 *                - ¿Se necesita tener una radio de onda larga? <BOOL> (default: false)
 *                - Determina a que bando esta dirigido el mensaje. <"All"|"Blufor"|"Opfor"|"Independant"|"Civilian"> (default: "All")
 *                - Distancia máxima con el emisor ó área para mostrar el mensaje. <NUMBER|ARRAY OF AREA> (default: -1)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *            //Genera un mensaje, sin emisor definido y no impone condiciones.
 *            _line = ["[Sdo] Usted", "Hola mundo!, esto es un ejemplo de una linea!"];
 *            [objNull, [_line], "Side", 5] call FCLA_Common_fnc_showSubtitles;
 *
 *            //Genera tres mensajes, con emisor definido e impone condiciones.
 *            _line1 = ["[Cbo] Enemigo", "Hola mundo!, primer linea!"];
 *            _line2 = ["[Cbo] Enemigo", "¿Todo bien?, segunda linea!"];
 *            _line3 = ["[Cbo] Enemigo", "Adios mundo!, tercera linea!"];
 *            [Civil_1, [_line1, _line2, _line3], "Civilian", 5, [false, true, "All", [150, 150, 0, false, 75]]] call FCLA_Common_fnc_showSubtitles;
 *
 * Notes:
 * Se recomienda utilizar esta función a travez del evento
 * personalizado "FCLA_Show_Subtitles".
 *
 * Si no sea desea definir un emisor asignele el valor <objNull>, como se
 * observa en el primer ejemplo.
 *
 * Para que se verifiquen las condiciones el emisor debera estar definido, sino
 * estas seran ignoradas y se les asignara el valor que tienen por defecto.
 *
 * Si la distancia máxima con el emisor es -1, no se tomara en cuenta.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_emitter", objNull, [objNull, teamMemberNull], 0],
        ["_lines", [[]], [[]], []],
        ["_emitterColor", "", [""], 0],
        ["_timeToHideEachLine", 0, [0], 0],
        ["_conditions", [false, false, "All", -1], [[]], 4]
       ];



//Verificar argumentos.
_emitterColor = toUpper _emitterColor;
_selectedSide = toUpper (_conditions select 2);
_needLongRadio = _conditions select 1;
_needShortRadio = _conditions select 0;
_distanceToShow = _conditions select 3;
_compatibleEmitterColors = ["SIDE", "VEHICLE", "COMMAND", "GROUP", "DIRECT", "SYSTEM", "BLUFOR", "OPFOR", "INDEPENDANT", "CIVILIAN"];
_compatibleConditionsForSide = ["ALL", "BLUFOR", "OPFOR", "INDEPENDANT", "CIVILIAN"];
if ((_lines isEqualTo [[]]) || !(_emitterColor in _compatibleEmitterColors) || (_timeToHideEachLine <= 0) || !(_selectedSide in _compatibleConditionsForSide)) exitWith {false};



[_emitter, _lines, _emitterColor, _timeToHideEachLine, _needShortRadio, _needLongRadio, _selectedSide, _distanceToShow] spawn {
  params ["_emitter", "_lines", "_emitterColor", "_timeToHideEachLine", "_needShortRadio", "_needLongRadio", "_selectedSide", "_distanceToShow"];

  //Mover labios del emisor.
  if (_emitter in allUnits) then {["FCLA_Random_Lip", [_emitter, true]] call CBA_fnc_globalEvent;};


  //Convertir color al formato HTML.
  _emitterColor = switch (_emitterColor) do {
    case "SIDE": {"#00ccff"};
    case "VEHICLE": {"#fbd40b"};
    case "COMMAND": {"#e5e760"};
    case "GROUP": {"#beee7e"};
    case "DIRECT": {"#fffffb"};
    case "SYSTEM": {"#8a8a88"};
    case "BLUFOR": {([West, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "OPFOR": {([East, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "INDEPENDANT": {([Independent, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "CIVILIAN": {([Civilian, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
  };


  //Convertir bando seleccionado al formato correcto.
  _selectedSide = switch (_selectedSide) do {
    case "BLUFOR": {WEST};
    case "OPFOR": {EAST};
    case "INDEPENDANT": {GUER};
    case "CIVILIAN": {CIV};
    default {"All"};
  };


  //Mostrar/Ocultar subtítulos.
  for "_i" from 0 to (count _lines) - 1 do {
    if (_emitter getVariable ["FCLA_Hide_Subtitles", false]) exitWith {};
    _handle = [_emitter, _lines, _emitterColor, _timeToHideEachLine, _needShortRadio, _needLongRadio, _selectedSide, _distanceToShow, _i] spawn {
      params ["_emitter", "_lines", "_emitterColor", "_timeToHideEachLine", "_needShortRadio", "_needLongRadio", "_selectedSide", "_distanceToShow", "_i"];
      disableSerialization;
      _caller = call CBA_fnc_currentUnit;
      _currentLine = _lines select _i;
      _emitterName = _currentLine select 0;
      _emitterText = _currentLine select 1;
      _hasShortRadio = if ((!isNull _emitter) && (_needShortRadio)) then {call TFAR_fnc_haveSWRadio;} else {true;};
      _hasLongRadio = if ((!isNull _emitter) && (_needLongRadio)) then {call TFAR_fnc_haveLRRadio;} else {true;};
      _isSelectedSide = if ((!isNull _emitter) && ((_selectedSide) isNotEqualTo "All")) then {(side _caller) == _selectedSide;} else {true;};
      _notShowingSubtitles = !(player getVariable ["FCLA_Subtitles", false]);
      _isCloseEnough = if (!isNull _emitter) then {
        if (_distanceToShow isEqualType 0) then {
          if (_distanceToShow <= 0) exitWith {true;};
          _emitter distance _caller <= _distanceToShow;
        } else {
          if (({_x <= 0} count [_distanceToShow select 0, _distanceToShow select 1, _distanceToShow select 4]) >= 3) exitWith {true;};
          _caller inArea [_emitter, _distanceToShow select 0, _distanceToShow select 1, _distanceToShow select 2, _distanceToShow select 3, _distanceToShow select 4];
        };
      } else {true;};

      if ((_hasShortRadio) && (_hasLongRadio) && (_isSelectedSide) && (_isCloseEnough) && (_notShowingSubtitles)) then {
        private "_display";
        titleRsc ["RscDynamicText", "PLAIN"];
        waitUntil {_display = uiNamespace getVariable "BIS_dynamicText"; !(isNull _display)};
        _ctrl = _display displayCtrl 9999;
        _emitter setVariable ["FCLA_Subtitles_ctrl", _ctrl, true];
        player setVariable ["FCLA_Subtitles", true];

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

        sleep (ceil _timeToHideEachLine);
        _ctrl ctrlSetFade 1;
        _ctrl ctrlCommit 0.5;
        player setVariable ["FCLA_Subtitles", nil];
      } else {
        sleep (ceil _timeToHideEachLine);
      };
    };
    waitUntil {scriptDone _handle};
    sleep 0.5;
  };


  //Eliminar variables de tipo objeto/interfaz.
  _emitter setVariable ["FCLA_Hide_Subtitles", nil, true];
  _emitter setVariable ["FCLA_Subtitles_ctrl", nil, true];
  player setVariable ["FCLA_Subtitles", nil];


  //Eliminar lógica y detener labios del emisor.
  if ((typeOf _emitter) == "VirtualAISquad") then {deleteVehicle _emitter;};
  if (_emitter in allUnits) then {["FCLA_Random_Lip", [_emitter, false]] call CBA_fnc_globalEvent;};
};
true
