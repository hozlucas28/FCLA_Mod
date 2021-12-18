
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
       "Sparks",
       "Fireflies",
       "Dust_Blast",
       "Sand_Swirl",
       "Suspended_Dust"
      ],
      [
       "Chispas",
       "Luciérnagas",
       "Ráfaga de polvo",
       "Remolino de arena",
       "Polvo (suspendido)"
      ],
      0
     ],
     false
    ],
    ["SLIDER", ["Tiempo", "Segundos para que se repita el efecto.\n• Nota: solo funciona con las chispas, la ráfaga de polvo y el remolino de arena."],
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
       case "SPARKS": {"CHISPAS";};
       case "FIREFLIES": {"LUCIÉRNAGAS";};
       case "DUST_BLAST": {"RÁFAGA DE POLVO";};
       case "SAND_SWIRL": {"REMOLINO DE ARENA";};
       case "SUSPENDED_DUST": {"POLVO (SUSPENDIDO)";};
     };

     _logic = createAgent ["VirtualAISquad", _this select 1, [], 0, "CAN_COLLIDE"];
     _curatorLogic = getAssignedCuratorLogic player;
     _curatorLogic addCuratorEditableObjects [[_logic], false];

     switch (_selectedEffect) do {
       case "SPARKS": {[_logic, _delay] spawn FCLA_Modules_fnc_spawnSparksCurator;};
       case "FIREFLIES": {;};
       case "DUST_BLAST": {;};
       case "SAND_SWIRL": {;};
       case "SUSPENDED_DUST": {;};
     };
     ["EL EFECTO " + _effectName + " SE HA GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, nil] call ZEN_Custom_Modules_fnc_Register;
