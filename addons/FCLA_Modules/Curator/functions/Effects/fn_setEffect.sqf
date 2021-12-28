
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
       "Sparks",
       "Fireflies",
       "Big_Fire",
       "Wind_Gust"
      ],
      [
       "Humo",
       "Chispas",
       "Luciérnagas",
       "Fuego (grande)",
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
     _delay = [_delay, 0] call BIS_fnc_cutDecimals;
     _selectedEffect = toUpper _selectedEffect;

     _effectName = switch (_selectedEffect) do {
       case "BIG_FIRE": {"FUEGO (GRANDE)";};
       case "SMOKE": {"HUMO";};
       case "SPARKS": {"CHISPAS";};
       case "WIND_GUST": {"RÁFAGA DE VIENTO";};
       case "FIREFLIES": {"LUCIÉRNAGAS";};
     };

     _module = createAgent ["FCLA_Module_Spawn_Effect", _this select 1, [], 0, "CAN_COLLIDE"];
     _curatorLogic = getAssignedCuratorLogic player;
     _curatorLogic addCuratorEditableObjects [[_module], false];
     _module setVariable ["FCLA_Force_Deactivation", true, true];

     switch (_selectedEffect) do {
       case "BIG_FIRE": {
         _effectObj = createVehicle ["test_EmptyObjectForFireBig", getPos _module, [], 0, "CAN_COLLIDE"];
         _curatorLogic addCuratorEditableObjects [[_effectObj], false];
         deleteVehicle _module;
       };

       case "SMOKE": {
         _effectObj = createVehicle ["test_EmptyObjectForSmoke", getPos _module, [], 0, "CAN_COLLIDE"];
         _curatorLogic addCuratorEditableObjects [[_effectObj], false];
         deleteVehicle _module;
       };

       case "SPARKS": {[_module, _delay] spawn FCLA_Modules_fnc_spawnSparksCurator;};
       case "WIND_GUST": {[_module, _delay] spawn FCLA_Modules_fnc_spawnWindGustCurator;};
       case "FIREFLIES": {[_module] spawn FCLA_Modules_fnc_spawnFirefliesCurator;};
     };
     ["EL EFECTO " + _effectName + " SE HA GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, nil] call ZEN_Custom_Modules_fnc_Register;
