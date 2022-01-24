
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
* Examples:
*            //Genera un mensaje, sin emisor definido y no impone condiciones.
*            _line = ["[Sdo] Usted", "Hola mundo!, esto es un ejemplo de una linea!"];
*            ["FCLA_Show_Subtitles", [objNull, [_line], "Side", 5], player] call CBA_fnc_targetEvent;
*
*            //Genera tres mensajes, con emisor definido e impone condiciones.
*            _line1 = ["[Cbo] Enemigo", "Hola mundo!, primer linea!"];
*            _line2 = ["[Cbo] Enemigo", "¿Todo bien?, segunda linea!"];
*            _line3 = ["[Cbo] Enemigo", "Adios mundo!, tercera linea!"];
*            ["FCLA_Show_Subtitles", [Civil_1, [_line1, _line2, _line3], "Civilian", 5, [false, true, "All", [150, 150, 0, false, 75]]], player] call CBA_fnc_targetEvent;
*
* Notes:
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

["FCLA_Show_Subtitles", {
  params [
          ["_emitter", objNull, [objNull, teamMemberNull], 0],
          ["_lines", [[]], [[]], []],
          ["_emitterColor", "", [""], 0],
          ["_timeToHideEachLine", 0, [0], 0],
          ["_conditions", [false, false, "All", -1], [[]], 4]
         ];

  _emitterColor = toUpper _emitterColor;
  _selectedSide = toUpper (_conditions select 2);
  _needLongRadio = _conditions select 1;
  _needShortRadio = _conditions select 0;
  _distanceToShow = _conditions select 3;
  _compatibleEmitterColors = ["SIDE", "VEHICLE", "COMMAND", "GROUP", "DIRECT", "SYSTEM", "BLUFOR", "OPFOR", "INDEPENDANT", "CIVILIAN"];
  _compatibleConditionsForSide = ["ALL", "BLUFOR", "OPFOR", "INDEPENDANT", "CIVILIAN"];
  if ((_lines isEqualTo [[]]) || !(_emitterColor in _compatibleEmitterColors) || (_timeToHideEachLine <= 0) || !(_selectedSide in _compatibleConditionsForSide)) exitWith {};
  [_emitter, _lines, _emitterColor, _timeToHideEachLine, [_needShortRadio, _needLongRadio, _selectedSide, _distanceToShow]] call FCLA_Common_fnc_showSubtitles;
}] call CBA_fnc_addEventHandler;
