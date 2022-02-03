
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un mensaje a modo de subtitulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Mostrar subtitulo (BETA)", {
  ["SUBTITULO",
	 [
    ["EDIT", ["Emisor", "Nombre del emisor"],
     [
      "",
      nil,
      nil
     ],
     false
    ],
    ["EDIT", ["Subtitulo", "Mensaje que se mostrara a modo de subtitulo"],
     [
      "",
      nil,
      nil
     ],
     false
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
       ["BLUFOR", "", "", [0, 0.3, 0.6, 1]],
       ["OPFOR", "", "", [0.5, 0, 0, 1]],
       ["Independant", "", "", [0, 0.5, 0, 1]],
       ["Civilian", "", "", [0.4, 0, 0.5, 1]]
      ],
      0
     ],
     false
    ],
    ["SLIDER", ["Tiempo", "Tiempo en segundos para ocultar el mensaje"],
     [
      1,
      60,
      5,
      0
     ],
     false
    ],
    ["SLIDER", ["Radio / Distancia", "Aquellas unidades comprendidas dentro del radio definido podran ver el mensaje, tomando como origen del radio la posicion donde se coloco el modulo.\n- Nota: si colocas -1 la distancia no importara."],
     [
      -1,
      5000,
      -1,
      0
     ],
     false
    ],
    ["TOOLBOX", ["Necesita radio corta", "Si se activa unicamente aquellas unidades que posean radio de onda corta podran ver los subtitulos"],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", ["Necesita radio larga", "Si se activa unicamente aquellas unidades que posean radio de onda larga podran ver los subtitulos"],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["COMBO", ["Seleccionar bando", "Determina a que bando debe pertenecer la unidad para ver el mensaje"],
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
     (_this select 1) params ["_position", "_attachedObject"];
     (_this select 0) params ["_emitterName", "_subtitle", "_color", "_timeToHide", "_distanceToShow", "_needShortRadio", "_needLongRadio", "_selectedSide"];
     _color = toUpper _color;
     _timeToHide = round _timeToHide;
     _repeatable = if (!isNull _attachedObject) then {true;} else {false;};
     _selectedSide = toUpper _selectedSide;
     _needLongRadio = if (_needLongRadio == 0) then {true;} else {false;};
     _distanceToShow = round _distanceToShow;
     _needShortRadio = if (_needShortRadio == 0) then {true;} else {false;};

     ["FCLA_Show_Subtitles", [_attachedObject, [[_emitterName, _subtitle]], _color, _timeToHide, [_needShortRadio, _needLongRadio, _selectedSide, _distanceToShow]]] call CBA_fnc_globalEvent;
     ["SUBTITULO MOSTRADO CON EXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Chat.paa"] call ZEN_Custom_Modules_fnc_Register;
