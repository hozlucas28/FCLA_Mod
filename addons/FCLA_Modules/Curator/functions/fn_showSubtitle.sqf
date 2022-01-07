
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para generar un mensaje a modo de subtítulo.
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
    ["SLIDER", ["Radio / Distancia", "Aquellas unidades comprendidas dentro del radio definido podrán ver el mensaje, tomando como origen del radio la posición donde se colocó el módulo.\n• Nota: si colocas -1 la distancia no importara."],
     [
      -1,
      5000,
      -1,
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
     _repeatable = if (!isNull _attachedObject) then {true;} else {false;};
     _needLongRadio = if (_needLongRadio == 0) then {true;} else {false;};
     _needShortRadio = if (_needShortRadio == 0) then {true;} else {false;};

     _module = createAgent ["FCLA_Module_Show_Subtitle", _position, [], 0, "CAN_COLLIDE"];
     _module synchronizeObjectsAdd [_attachedObject];
     _module setVariable ["FCLA_Repeatable", false, true];
     _module setVariable ["FCLA_Subtitle", _subtitle, true];
     _module setVariable ["FCLA_Color", toUpper _color, true];
     _module setVariable ["FCLA_Emitter", _emitterName, true];
     _module setVariable ["FCLA_Assigned_Curator", player, true];
     _module setVariable ["FCLA_Side", toUpper _selectedSide, true];
     _module setVariable ["FCLA_Need_Long_Radio", _needLongRadio, true];
     _module setVariable ["FCLA_Time_To_Hide", round _timeToHide, true];
     _module setVariable ["FCLA_Need_Short_Radio", _needShortRadio, true];
     _module setVariable ["objectArea", [round _distanceToShow, round _distanceToShow, 0, false, round _distanceToShow], true];
     ["SUBTÍTULO MOSTRADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, [_this select 0, _this select 1]] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Chat.paa"] call ZEN_Custom_Modules_fnc_Register;
