
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca un jammer que bloquea/interfiere las senales de comunicacion de las
 * radios de onda corta y larga, incluyendo vehiculos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Colocar jammer", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || (_attachedObject in allUnits)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UN OBJETO"] call ZEN_Common_fnc_showMessage;};


  ["JAMMER",
  [
   ["EDIT", ["Identificador", "Nombre personalizado para poder reconocer al dispositivo, cuando se le informe a los Zeus que ha sido desactivado.\n- Si no se define un identificador no se informara a los Zeus."],
    [
     "",
     nil,
     nil
    ],
    true
   ],
   ["SLIDER", ["Radio", "Aquellas entidades comprendidas dentro del radio definido seran afectadas por el jammer, tomando como origen del radio la entidad donde se coloco el modulo.\n- Nota: si colocas -1 todo el mapa se vera afectado por el jammer."],
    [
     -1,
     5000,
     500,
     0
    ],
    false
   ],
   ["TOOLBOX", ["Desactivable", "Si se activa se podra desactivar el jammer a travez de una accion."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["Afectar vehiculos", "Si se activa las radios de los vehiculos tambien seran afectadas."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["Se necesita dispositivo", "Si se activa se necesitara de un dispositivo de hackeo para realizar la accion que desactiva al jammer."],
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
    (_this select 0) params ["_jammerID", "_jammerRad", "_canBeDisabled", "_affectVehicles", "_needHackingDevice"];
    _jammerRad = round _jammerRad;
    _canBeDisabled = if (_canBeDisabled == 0) then {true;} else {false;};
    _affectVehicles = if (_affectVehicles == 0) then {true;} else {false;};
    _needHackingDevice = if (_needHackingDevice == 0) then {true;} else {false;};

    _module = createAgent ["FCLA_Module_Jammer_Empty", _position, [], 0, "CAN_COLLIDE"];
    _module setVariable ['FCLA_Jammer_ID', _jammerID, true];
    _module setVariable ['FCLA_Deactivatable', _canBeDisabled, true];
    _module setVariable ['FCLA_Affect_Vehicles', _affectVehicles, true];
    _module setVariable ['FCLA_Need_Hacking_Device', _needHackingDevice, true];
    _module setVariable ['objectArea', [_jammerRad, _jammerRad, 0, false, _jammerRad], true];
    _module synchronizeObjectsAdd [_attachedObject];
    [_module, [_attachedObject], true] call FCLA_Modules_fnc_setJammer3DEN;

    _curatorLogic = getAssignedCuratorLogic player;
    ["ZEN_Common_addObjects", [[_module], _curatorLogic]] call CBA_fnc_serverEvent;
    ["JAMMER GENERADO CON EXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Jammer.paa"] call ZEN_Custom_Modules_fnc_Register;
