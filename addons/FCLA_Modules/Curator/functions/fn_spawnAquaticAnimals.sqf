
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el animal acuatico seleccionado.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_isTHASharksModNotLoaded = !(["THA_WhaleShark"] call ACE_Common_fnc_isModLoaded) || !(["THA_TropicalFishes"] call ACE_Common_fnc_isModLoaded) || !(["THA_Manta"] call ACE_Common_fnc_isModLoaded) || !(["THA_HammerHeadShark"] call ACE_Common_fnc_isModLoaded) || !(["THA_GreatWhiteShark"] call ACE_Common_fnc_isModLoaded) || !(["THA_DiveEquipment"] call ACE_Common_fnc_isModLoaded);
if (_isTHASharksModNotLoaded) exitWith {};


["FCLA", "Animales acuaticos", {
  ["GENERAR ANIMAL ACUATICO",
	[
   ["COMBO", "Seleccionar animal",
    [
     [
      "BlueTangFish",
      "BlueTangSchool",
      "ButterflyFish",
      "Napoleonwrasse_small",
      "Napoleonwrasse",
      "HammerheadShark",
      "HammerheadShark3",
      "GreatWhiteShark",
      "GreatWhiteShark3",
      "Manta",
      "WhaleShark"
     ],
     [
     "Pez mariposa",
     "Pez Napoleón",
     "Pez cirujano azul",
     "Pez Napoleón (grande)",
     "Pez cirujano azul (cardumen)",
     "Tiburon martillo",
     "Tiburon martillo (hostil)",
     "Tiburon blanco",
     "Tiburon blanco (hostil)",
     "Mantarraya",
     "Tiburon ballena"
     ],
     0
    ],
    false
   ],
   ["SLIDER", "Cantidad",
    [
     1,
     5,
     2,
     0
    ],
    false
   ],
   ["SLIDER", ["Radio", "Distancia a la que aparecera el animal seleccionado, tomando como centro la posición donde se coloco el modulo."],
    [
     10,
     100,
     15,
     0
    ],
    false
   ]
	],
  {
    (_this select 0) params ["_animalSelected", "_numberOfAnimals", "_rad"];
    (_this select 1) params ["_position", "_attachedObject"];

    for "_i" from 1 to _numberOfAnimals do {createAgent [_animalSelected, _position, [], _rad, "NONE"];};
    _text = if (_numberOfAnimals <= 1) then {"ANIMAL ACUATICO";} else {"ANIMALES ACUATICOS";};
    [_text + "GENERADOS CON EXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Fish.paa"] call ZEN_Custom_Modules_fnc_Register;
