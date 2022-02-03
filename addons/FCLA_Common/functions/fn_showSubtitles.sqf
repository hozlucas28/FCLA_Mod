
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una serie de mensajes a modo de subtitulos, segun los argumentos enviados.
 *
 * Arguments:
 *            0: Emisor de los mensajes/subtitulos. <UNIT|OBJECT>
 *
 *            1: Linea/s (subtitulo/s) que se quiere/n mostrar. <ARRAY OF LINE/S>
 *                - Primera linea con el nombre del emisor y subtitulo a mostrar. <ARRAY OF STRINGS>
 *                - Segunda linea con el nombre del emisor y subtitulo a mostrar. <ARRAY OF STRINGS>
 *                ...
 *
 *            2: Color para el nombre del emisor. <STRING>
 *                # Colores aceptados: "Side", "Vehicle", "Command", "Group",
 *                                     "Direct", "System", "Blufor",
 *                                     "Opfor", "Independant" y "Civilian".
 *
 *            3: Tiempo (en segundos) para ocultar cada linea, una vez mostrada. <NUMBER>
 *
 *            4: Condiciones para mostrar los subtitulos, opcional. <ARRAY>
 *                - ¿Se necesita tener una radio de onda corta? <BOOL> (default: false)
 *                - ¿Se necesita tener una radio de onda larga? <BOOL> (default: false)
 *                - Determina a que bando esta dirigido el mensaje. <"All"|"Blufor"|"Opfor"|"Independant"|"Civilian"> (default: "All")
 *                - Distancia maxima con el emisor o area para mostrar el mensaje. <NUMBER|ARRAY OF AREA> (default: -1)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
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
 * Se recomienda utilizar esta funcion a travez del evento
 * personalizado "FCLA_Show_Subtitles".
 *
 * Si no sea desea definir un emisor asignele el valor <objNull>, como se
 * observa en el primer ejemplo.
 *
 * Si la distancia maxima con el emisor es -1, no se tomara en cuenta.
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
  _emitter setVariable ["FCLA_Emitter", true, true];
  if (_emitter in allUnits) then {_emitter setRandomLip true;};


  //Convertir color al formato HTML.
  _emitterColor = switch (_emitterColor) do {
    case "SIDE": {"#00ccff";};
    case "VEHICLE": {"#fbd40b";};
    case "COMMAND": {"#e5e760";};
    case "GROUP": {"#beee7e";};
    case "DIRECT": {"#fffffb";};
    case "SYSTEM": {"#8a8a88";};
    case "BLUFOR": {([West, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "OPFOR": {([East, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "INDEPENDANT": {([Independent, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
    case "CIVILIAN": {([Civilian, false] call BIS_fnc_sideColor) call BIS_fnc_colorRGBtoHTML;};
  };


  //Convertir bando seleccionado al formato correcto.
  _selectedSide = switch (_selectedSide) do {
    case "BLUFOR": {"WEST";};
    case "OPFOR": {"EAST";};
    case "INDEPENDANT": {"GUER";};
    case "CIVILIAN": {"CIV";};
    default {"All";};
  };


  //Mostrar/Ocultar subtitulos.
  for "_i" from 0 to (count _lines) - 1 do {
    if (_emitter getVariable ["FCLA_Hide_Subtitles", false]) exitWith {["", -1, -1, 0, 0, 0, 9999] spawn BIS_fnc_dynamicText;};
    _handle = [_emitter, _lines, _emitterColor, _timeToHideEachLine, _needShortRadio, _needLongRadio, _selectedSide, _distanceToShow, _i] spawn {
      params ["_emitter", "_lines", "_emitterColor", "_timeToHideEachLine", "_needShortRadio", "_needLongRadio", "_selectedSide", "_distanceToShow", "_i"];
      _caller = call CBA_fnc_currentUnit;
      _currentLine = _lines select _i;
      _emitterName = _currentLine select 0;
      _emitterText = _currentLine select 1;
      _hasShortRadio = if (_needShortRadio) then {call TFAR_fnc_haveSWRadio;} else {true;};
      _hasLongRadio = if (_needLongRadio) then {call TFAR_fnc_haveLRRadio;} else {true;};
      _isSelectedSide = if (_selectedSide isNotEqualTo "All") then {(str (side _caller)) == _selectedSide;} else {true;};
      _isCloseEnough = if (_distanceToShow isEqualType 0) then {
        if (_distanceToShow <= 0) exitWith {true;};
        _emitter distance _caller <= _distanceToShow;
      } else {
        if (({_x <= 0} count [_distanceToShow select 0, _distanceToShow select 1, _distanceToShow select 4]) >= 3) exitWith {true;};
        _caller inArea [_emitter, _distanceToShow select 0, _distanceToShow select 1, _distanceToShow select 2, _distanceToShow select 3, _distanceToShow select 4];
      };

      if ((_hasShortRadio) && (_hasLongRadio) && (_isSelectedSide) && (_isCloseEnough)) then {
        _w = 0.4 * safeZoneW;
        _x = safeZoneX + ((0.5 * safeZoneW) - (_w / 2));
        _y = safeZoneY + (0.73 * safeZoneH);
        [format ["<t align='center' color='%3' shadow='2' size='0.52'>%1: </t><t align='center' color='#d0d0d0' shadow='2' size='0.52'>%2</t>", _emitterName, _emitterText, _emitterColor], _x, _y, ceil _timeToHideEachLine, 0.5, 0, 9999] spawn BIS_fnc_dynamicText;
        sleep (ceil _timeToHideEachLine);
      } else {
        sleep (ceil _timeToHideEachLine);
      };
    };
    waitUntil {scriptDone _handle};
    sleep 0.5;
  };


  //Detener labios del emisor.
  _emitter setVariable ["FCLA_Emitter", nil, true];
  _emitter setVariable ["FCLA_Hide_Subtitles", nil, true];
  if (_emitter in allUnits) then {_emitter setRandomLip false;};
};
true
