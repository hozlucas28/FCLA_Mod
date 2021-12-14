
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para provocarle lesiones a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Provocar lesiones (ACE)", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};


  ["LESIONES",
	 [
    ["COMBO", "Tipo de lesión",
     [
      [
       "grenade",
       "collision",
       "explosive",
       "shell",
       "backblast",
       "vehiclecrash"
      ],
      [
       "Granada",
       "Colisión",
       "Explosivo",
       "Proyectil",
       "Onda de choque",
       "Accidente de vehículo"
      ],
      0
     ],
     false
    ],
    ["SLIDER", ["Nivel de lesiones", "Mientras más alto sea el nivel de lesiones, más heridas habra.\n• [5 - 10] = alta complejidad.\n• [2.5 - 5] = media complejidad.\n• [0 - 2.5] = baja complejidad."],
     [
      0,
      10,
      1.25,
      2
     ],
     false
    ],
    ["TOOLBOX", ["¿Forzar inconsciencia?", "Si se activa se forzara a la unidad a estar inconsciente sin importar la gravedad de sus heridas"],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "¿Fracturar brazo derecho?",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "¿Fracturar brazo izquierdo?",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "¿Fracturar pierna derecha?",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "¿Fracturar pierna izquierda?",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ]
	 ],
   {
     (_this select 0) params ["_typeOfInjury", "_levelOfInjury", "_forceUnconsciousness", "_fractureRightArm", "_fractureLeftArm", "_fractureRightLeg", "_fractureLeftLeg"];
     _levelOfInjury = [_levelOfInjury, 2] call BIS_fnc_cutDecimals;
     _forceUnconsciousness = if (_forceUnconsciousness == 0) then {true;} else {nil;};
     _fractureLeftArm = if (_fractureLeftArm == 0) then {1;} else {0;};
     _fractureLeftLeg = if (_fractureLeftLeg == 0) then {1;} else {0;};
     _fractureRightArm = if (_fractureRightArm == 0) then {1;} else {0;};
     _fractureRightLeg = if (_fractureRightLeg == 0) then {1;} else {0;};
     _attachedObject = _this select 1;

     ["LESIONES PROVOCADAS CON ÉXITO"] call ZEN_Common_fnc_showMessage;
     ["FCLA_Common_Execute", [ACE_Medical_fnc_addDamageToUnit, [_attachedObject, _levelOfInjury, selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"], _typeOfInjury]], _attachedObject] call CBA_fnc_targetEvent;

     _attachedObject setVariable ["ACE_Medical_Fractures", [0, 0, _fractureLeftArm, _fractureRightArm, _fractureLeftLeg, _fractureRightLeg], true];
     [_attachedObject, _forceUnconsciousness] call ACE_Medical_fnc_setUnconscious;
     ["FCLA_Common_Execute", [ACE_Medical_Engine_fnc_updateDamageEffects, [_attachedObject]], _attachedObject] call CBA_fnc_targetEvent;
   }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Medical_Cross.paa"] call ZEN_Custom_Modules_fnc_Register;
