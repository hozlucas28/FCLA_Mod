
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Provoca lesiones a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Provocar lesiones (ACE)", {
  params ["_position", "_attachedObject"];
  _isHidden = isObjectHidden _attachedObject;
  _isInvulnerable = !(isDamageAllowed _attachedObject);
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};
  if (_isHidden) exitWith {["ERROR! LA UNIDAD NO DEBE ESTAR OCULTA"] call ZEN_Common_fnc_showMessage;};
  if (_isInvulnerable) exitWith {["ERROR! LA UNIDAD DEBE TENER EL DANO ACTIVADO"] call ZEN_Common_fnc_showMessage;};


  ["LESIONES",
	 [
    ["COMBO", "Tipo de lesion",
     [
      [
       "none",
       "falling",
       "drowning",
       "bullet",
       "grenade",
       "collision",
       "stab",
       "punch",
       "burn",
       "explosive",
       "shell",
       "backblast",
       "ropeburn",
       "vehiclecrash"
      ],
      [
       "Ninguna",
       "Caida",
       "Ahogo",
       "Disparo",
       "Granada",
       "Colision",
       "Punalada",
       "Punetazo",
       "Quemadura",
       "Explosivo",
       "Proyectil",
       "Onda de choque",
       "Quemadura de cuerda",
       "Accidente de vehiculo"
      ],
      0
     ],
     false
    ],
    ["SLIDER", ["Nivel de lesiones", "Mientras mas alto sea el nivel de lesiones, mas heridas habra.\n- [5 - 10] = alta complejidad.\n- [2.5 - 5] = media complejidad.\n- [0 - 2.5] = baja complejidad."],
     [
      0,
      10,
      1.25,
      2
     ],
     false
    ],
    ["TOOLBOX", ["Forzar inconsciencia", "Si se activa se forzara a la unidad a estar inconsciente sin importar la gravedad de sus heridas"],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Neumotorax",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Via aerea ocluida",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Hemoneumotorax",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Tension neumotoraxica",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Obstrucci??n de la via aerea",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Fracturar brazo derecho",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Fracturar brazo izquierdo",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Fracturar pierna derecha",
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", "Fracturar pierna izquierda",
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
     (_this select 1) params ["_position", "_attachedObject"];
     (_this select 0) params ["_typeOfInjury", "_levelOfInjury", "_forceUnconsciousness", "_pneumothorax", "_airwayOccluded", "_hemopneumothorax", "_tensionPneumothorax", "_airwayObstruction", "_fractureRightArm", "_fractureLeftArm", "_fractureRightLeg", "_fractureLeftLeg"];
     _pneumothorax = if (_pneumothorax == 0) then {true;} else {false;};
     _airwayOccluded = if (_airwayOccluded == 0) then {true;} else {false;};
     _fractureLeftArm = if (_fractureLeftArm == 0) then {1;} else {0;};
     _fractureLeftLeg = if (_fractureLeftLeg == 0) then {1;} else {0;};
     _fractureRightArm = if (_fractureRightArm == 0) then {1;} else {0;};
     _fractureRightLeg = if (_fractureRightLeg == 0) then {1;} else {0;};
     _hemopneumothorax = if (_hemopneumothorax == 0) then {true;} else {false;};
     _airwayObstruction = if (_airwayObstruction == 0) then {true;} else {false;};
     _tensionPneumothorax = if (_tensionPneumothorax == 0) then {true;} else {false;};
     _forceUnconsciousness = if (_forceUnconsciousness == 0) then {true;} else {false;};

     _attachedObject setVariable ["ACE_Medical_AI_lastFired", 9999999, true];
     [_attachedObject, _forceUnconsciousness] call ACE_Medical_fnc_setUnconscious;
     _attachedObject setVariable ["KAT_airWay_Obstruction", _airwayObstruction, true];
     _attachedObject setVariable ["KAT_medical_airwayOccluded", _airwayOccluded, true];
     _attachedObject setVariable ["ACE_Medical_Fractures", [0, 0, _fractureLeftArm, _fractureRightArm, _fractureLeftLeg, _fractureRightLeg], true];
     if (_typeOfInjury != "none") then {["FCLA_Common_Execute", [ACE_Medical_fnc_addDamageToUnit, [_attachedObject, _levelOfInjury, selectRandom ["Head", "Body", "LeftArm", "RightArm", "LeftLeg", "RightLeg"], _typeOfInjury, objNull, [], true], false], _attachedObject] call CBA_fnc_targetEvent;};

     if (_pneumothorax) then {
       [_attachedObject, 0.5] call Ace_Medical_Status_fnc_adjustPainLevel;
       [_attachedObject] call KAT_Breathing_fnc_handleBreathing;
       _attachedObject setVariable ["KAT_medical_Pneumothorax", _pneumothorax, true];
     };

     if (_hemopneumothorax) then {
       [_attachedObject, 0.7] call Ace_Medical_Status_fnc_adjustPainLevel;
       [_attachedObject] call KAT_Breathing_fnc_handleBreathing;
       _attachedObject setVariable ["KAT_Medical_Hemopneumothorax", _hemopneumothorax, true];
     };

     if (_tensionPneumothorax) then {
       [_attachedObject, 0.7] call Ace_Medical_Status_fnc_adjustPainLevel;
       [_attachedObject] call KAT_Breathing_fnc_handleBreathing;
       _attachedObject setVariable ["KAT_Medical_Tensionpneumothorax", _tensionPneumothorax, true];
     };

     ["FCLA_Common_Execute", [ACE_Medical_Engine_fnc_updateDamageEffects, [_attachedObject], false]] call CBA_fnc_globalEvent;
     ["LESIONES PROVOCADAS CON EXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Medical_Cross.paa"] call ZEN_Custom_Modules_fnc_Register;
