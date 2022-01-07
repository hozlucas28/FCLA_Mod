
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
  _isHidden = isObjectHidden _attachedObject;
  _isInvulnerable = !(isDamageAllowed _attachedObject);
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};
  if (_isHidden) exitWith {["ERROR! LA UNIDAD NO DEBE ESTAR OCULTA"] call ZEN_Common_fnc_showMessage;};
  if (_isInvulnerable) exitWith {["ERROR! LA UNIDAD DEBE TENER EL DAÑO ACTIVADO"] call ZEN_Common_fnc_showMessage;};


  ["LESIONES",
	 [
    ["COMBO", "Tipo de lesión",
     [
      [
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
       "Caida",
       "Ahogo",
       "Disparo",
       "Granada",
       "Colisión",
       "Puñalada",
       "Puñetazo",
       "Quemadura",
       "Explosivo",
       "Proyectil",
       "Onda de choque",
       "Quemadura de cuerda",
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
     (_this select 1) params ["_position", "_attachedObject"];
     (_this select 0) params ["_typeOfInjury", "_levelOfInjury", "_forceUnconsciousness", "_fractureRightArm", "_fractureLeftArm", "_fractureRightLeg", "_fractureLeftLeg"];
     _fractureLeftArm = if (_fractureLeftArm == 0) then {true;} else {false;};
     _fractureLeftLeg = if (_fractureLeftLeg == 0) then {true;} else {false;};
     _fractureRightArm = if (_fractureRightArm == 0) then {true;} else {false;};
     _fractureRightLeg = if (_fractureRightLeg == 0) then {true;} else {false;};
     _forceUnconsciousness = if (_forceUnconsciousness == 0) then {true;} else {false;};

     _module = createAgent ["FCLA_Create_Injuries", _position, [], 0, "CAN_COLLIDE"];
     _module synchronizeObjectsAdd [_attachedObject];
     _module setVariable ["FCLA_Type_Of_Injury", toLower _typeOfInjury, true];
     _module setVariable ["FCLA_Level_Of_Injury", round _levelOfInjury, true];
     _module setVariable ["FCLA_Fracture_Left_Arm", _fractureLeftArm, true];
     _module setVariable ["FCLA_Fracture_Left_Leg", _fractureLeftLeg, true];
     _module setVariable ["FCLA_Fracture_Right_Arm", _fractureRightArm, true];
     _module setVariable ["FCLA_Fracture_Right_Leg", _fractureRightLeg, true];
     _module setVariable ["FCLA_Force_Unconsciousness", _forceUnconsciousness, true];
     ["LESIONES PROVOCADAS CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, [_position, _attachedObject]] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Medical_Cross.paa"] call ZEN_Custom_Modules_fnc_Register;
