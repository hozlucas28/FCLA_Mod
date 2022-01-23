
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

     private ["_attachedObject", "_emitterName", "_subtitle"];
     private _moduleGroup = createGroup [sideLogic, true];
     private _color = toUpper _color;
     private _timeToHide = round _timeToHide;
     private _repeatable = if (!isNull _attachedObject) then {true;} else {false;};
     private _selectedSide = toUpper _selectedSide;
     private _needLongRadio = if (_needLongRadio == 0) then {true;} else {false;};
     private _distanceToShow = round _distanceToShow;
     private _needShortRadio = if (_needShortRadio == 0) then {true;} else {false;};
     "FCLA_Module_Show_Subtitle" createUnit [_position, _moduleGroup, "
       this attachTo [_attachedObject, [0, 0, 0]];
       this setVariable ['FCLA_Color', _color, true];
       this setVariable ['FCLA_Repeatable', false, true];
       this setVariable ['FCLA_Side', _selectedSide, true];
       this setVariable ['FCLA_Subtitle', _subtitle, true];
       this setVariable ['FCLA_Emitter', _emitterName, true];
       this setVariable ['FCLA_Time_To_Hide', _timeToHide, true];
       this setVariable ['FCLA_Need_Long_Radio', _needLongRadio, true];
       this setVariable ['FCLA_Need_Short_Radio', _needShortRadio, true];
       this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
       this setVariable ['objectArea', [_distanceToShow, _distanceToShow, 0, false, _distanceToShow], true];
       this synchronizeObjectsAdd [_attachedObject];
     "];

     _module = nearestObject [_position, "FCLA_Module_Show_Subtitle"];
     _curatorLogic = getAssignedCuratorLogic player;
     _curatorLogic addCuratorEditableObjects [[_module], false];
     ["SUBTÍTULO MOSTRADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Chat.paa"] call ZEN_Custom_Modules_fnc_Register;
