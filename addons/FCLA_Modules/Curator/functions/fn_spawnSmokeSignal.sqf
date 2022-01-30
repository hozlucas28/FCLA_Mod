
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera una señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Generar señal de humo", {
  ["Señal de humo",
	 [
    ["SLIDER", ["Altura", "Altura a la que generara el humo de la señal, respecto del suelo"],
     [
      5,
      100,
      20,
      0
     ],
     false
    ],
    ["COMBO", "Color",
     [
      [
       [1, 0.253, 0, 1],
       [0.266, 0.537, 1, 1],
       [0.1, 0.5, 0.05, 1],
       [0.8, 0.432, 0.8, 1],
       [1, 1, 1, 1],
       [1, 0.54, 0.21, 1],
       [0.956, 1, 0.21, 1]
      ],
      [
       ["Rojo", "", "", [1, 0.253, 0, 1]],
       ["Azul", "", "", [0.266, 0.537, 1, 1]],
       ["Verde", "", "", [0.1, 0.5, 0.05, 1]],
       ["Morado", "", "", [0.8, 0.432, 0.8, 1]],
       ["Blanco", "", "", [1, 1, 1, 1]],
       ["Naranja", "", "", [1, 0.54, 0.21, 1]],
       ["Amarillo", "", "", [0.956, 1, 0.21, 1]]
      ],
      0
     ],
     false
    ]
	 ],
   {
     (_this select 0) params ["_height", "_color"];
     (_this select 1) params ["_position", "_attachedObject"];
     _x = _position select 0;
     _y = _position select 1;
     _z = _position select 2;
     _height = [_height, 0] call BIS_fnc_cutDecimals;
     _position = [_x, _y, _z + _height];

     ["FCLA_Smoke_Signal", [objNull, _position, _color]] call CBA_fnc_globalEvent;
     ["SEÑAL DE HUMO GENERADA"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Smoke.paa"] call ZEN_Custom_Modules_fnc_Register;
