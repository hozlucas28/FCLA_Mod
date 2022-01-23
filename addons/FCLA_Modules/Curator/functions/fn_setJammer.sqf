
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para colocar un jammer que bloquea/interfiere las señales de
 * comunicación de las radios de onda corta y larga, incluyendo vehículos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Colocar jammer", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || (_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN OBJETO"] call ZEN_Common_fnc_showMessage;};


  ["JAMMER",
  [
   ["EDIT", ["Identificador", "Nombre personalizado para poder reconocer al dispositivo, cuando se le informe a los Zeus que ha sido desactivado.\n• Si no se define un identificador no se informara a los Zeus."],
    [
     "",
     nil,
     nil
    ],
    true
   ],
   ["SLIDER", ["Radio", "Aquellas entidades comprendidas dentro del radio definido seran afectadas por el jammer, tomando como origen del radio la entidad donde se colocó el módulo.\n• Nota: si colocas -1 todo el mapa se vera afectado por el jammer."],
    [
     -1,
     5000,
     500,
     0
    ],
    false
   ],
   ["TOOLBOX", ["Desactivable", "Si se activa se podra desactivar el jammer a travez de una acción."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["¿Afectar vehículos?", "Si se activa las radios de los vehículos tambien seran afectadas."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["¿Se necesita dispositivo?", "Si se activa se necesitara de un dispositivo de hackeo para realizar la acción que desactiva al jammer."],
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

    private ["_position", "_attachedObject", "_jammerID"];
    private _moduleGroup = createGroup [sideLogic, true];
    private _jammerRad = round _jammerRad;
    private _canBeDisabled = if (_canBeDisabled == 0) then {true;} else {false;};
    private _affectVehicles = if (_affectVehicles == 0) then {true;} else {false;};
    private _needHackingDevice = if (_needHackingDevice == 0) then {true;} else {false;};
    "FCLA_Module_Jammer" createUnit [_position, _moduleGroup, "
      this attachTo [_attachedObject, [0, 0, 0]];
      this setVariable ['FCLA_Jammer_ID', _jammerID, true];
      this setVariable ['FCLA_Deactivatable', _canBeDisabled, true];
      this setVariable ['FCLA_Affect_Vehicles', _affectVehicles, true];
      this setVariable ['FCLA_Need_Hacking_Device', _needHackingDevice, true];
      this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
      this setVariable ['objectArea', [_jammerRad, _jammerRad, 0, false, _jammerRad], true];
      this synchronizeObjectsAdd [_attachedObject];
    "];
    ["JAMMER GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Jammer.paa"] call ZEN_Custom_Modules_fnc_Register;
