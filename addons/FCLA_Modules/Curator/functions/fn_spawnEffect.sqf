
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para generar un efecto.
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
     _selectedEffect = toUpper _selectedEffect;
     _effectName = switch (_selectedEffect) do {
       case "FIRE": {"FUEGO";};
       case "SMOKE": {"HUMO";};
       case "SPARKS": {"CHISPAS";};
       case "WIND_GUST": {"RÁFAGA DE VIENTO";};
       case "FIREFLIES": {"LUCIÉRNAGAS";};
     };

     _module = createAgent ["FCLA_Module_Spawn_Effect", _this select 1, [], 0, "CAN_COLLIDE"];
     _module setVariable ["FCLA_Delay", round _delay, true];
     _module setVariable ["FCLA_Effect", _selectedEffect, true];
     _module setVariable ["FCLA_Assigned_Curator", player, true];
     ["EL EFECTO " + _effectName + " SE HA GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, nil] call ZEN_Custom_Modules_fnc_Register;
