
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una serie de mensajes a modo de subtítulos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Mostrar subtítulo", {
  ["SUBTÍTULO",
	 [
    ["EDIT", ["Emisor", "Nombre del emisor"],
     [
      "",
      nil,
      nil
     ],
     false
    ],
    ["EDIT", ["Subtítulo", "Mensaje que se mostrara a modo de subtítulo"],
     [
      "",
      nil,
      nil
     ],
     true
    ],
    ["COMBO", "Color",
     [
      [
       "SIDE", "VEHICLE", "COMMAND", "GROUP", "DIRECT",
       "SYSTEM", "BLUFOR", "OPFOR", "INDEPENDANT", "CIVILIAN"
      ],
      [
       ["Side", "", "", [0, 0.8, 1, 1]],
       ["Vehicle", "", "", [0.984, 0.831, 0.043, 1]],
       ["Command", "", "", [0.898, 0.906, 0.376, 1]],
       ["Group", "", "", [0.745, 0.933, 0.494, 1]],
       ["Direct", "", "", [1, 1, 0.984, 1]],
       ["System", "", "", [0.541, 0.541, 0.533, 1]],
       ["Blufor", "", "", [0, 0.3, 0.6, 1]],
       ["Opfor", "", "", [0.5, 0, 0, 1]],
       ["Independant", "", "", [0, 0.5, 0, 1]],
       ["Civilian", "", "", [0.4, 0, 0.5, 1]]
      ],
      0
     ],
     false
    ],
    ["TOOLBOX", ["¿Necesita radio corta?", "Si se activa únicamente aquellas unidades que posean radio de onda corta podran ver los subtítulos"],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", ["¿Necesita radio larga?", "Si se activa únicamente aquellas unidades que posean radio de onda larga podran ver los subtítulos"],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["COMBO", ["Seleccionar bando", "Determina a que bando debe pertenecer la unidad para ver el subtítulo"],
     [
      [
       "ALL",
       "BLUFOR",
       "OPFOR",
       "INDEPENDANT",
       "CIVILIAN"
      ],
      [
       "Todos",
       "BLUFOR",
       "OPFOR",
       "Independiente",
       "Civil"
      ],
      0
     ],
     false
    ]
	 ],
   {
     (_this select 0) params ["_emitterName", "_line", "_colorSelected", "_needShortRadio", "_needLongRadio", "_selectedSide"];
     _needShortRadio = if (_needShortRadio == 0) then {true;} else {false;};
     _needLongRadio = if (_needLongRadio == 0) then {true;} else {false;};//FALTA COLOCAR TIEMPO PARA DESAPARECER Y RADIAL.

     ["FCLA_Show_Subtitles", [objNull, [_line], _colorSelected, 5, [_needShortRadio, _needLongRadio, _selectedSide]]] call CBA_fnc_globalEventJIP;
     ["SUBTÍTULO MOSTRADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\x\zen\addons\modules\ui\chat_ca.paa"] call ZEN_Custom_Modules_fnc_Register;
