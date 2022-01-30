
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto seleccionado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Generar efecto", {
  ["EFECTO",
	 [
    ["COMBO", "Tipo de efecto",
     [
      [
       "Smoke",
       "Fire",
       "Sparks",
       "Fireflies",
       "Wind_Gust"
      ],
      [
       "Humo",
       "Fuego",
       "Chispas",
       "Luciérnagas",
       "Ráfaga de viento"
      ],
      0
     ],
     false
    ],
    ["SLIDER", ["Tiempo", "Segundos para que se repita el efecto.\n• Nota: solo funciona con las chispas y la ráfaga de viento."],
     [
      1,
      3600,
      15,
      0
     ],
     true
    ]
	 ],
   {
     (_this select 0) params ["_selectedEffect", "_delay"];
     (_this select 1) params ["_position", "_attachedObject"];

     _effectName = switch (_selectedEffect) do {
       case "Fire": {"FUEGO";};
       case "Smoke": {"HUMO";};
       case "Sparks": {"CHISPAS";};
       case "Wind_gust": {"RÁFAGA DE VIENTO";};
       case "Fireflies": {"LUCIÉRNAGAS";};
     };

     _module = createAgent ["FCLA_Module_Spawn_Effect_Empty", _position, [], 0, "CAN_COLLIDE"];
     _module setVariable ["FCLA_Delay", _delay, true];
     _module setVariable ["FCLA_Effect", _selectedEffect, true];
     [_module, [], true] call FCLA_Modules_fnc_setEffect3DEN;

     _curatorLogic = getAssignedCuratorLogic player;
     _curatorLogic addCuratorEditableObjects [[_module], false];
     ["EL EFECTO " + _effectName + " SE HA GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, ""] call ZEN_Custom_Modules_fnc_Register;
