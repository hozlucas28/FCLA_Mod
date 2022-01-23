
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que permite hackear el dispositivo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Dispositivo hackeable", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || (_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN OBJETO"] call ZEN_Common_fnc_showMessage;};


  ["HACKEO DE DISPOSITIVO",
	 [
    ["EDIT", ["Identificador", "Nombre personalizado para poder reconocer al dispositivo, cuando se le informe a los Zeus que ha sido hackeado.\n• Si no se define un identificador no se informara a los Zeus."],
     [
      "",
      nil,
      nil
     ],
     true
    ],
    ["TOOLBOX", ["¿Se necesita un dispositivo?", "Si se activa se necesitara de un dispositivo de hackeo para realizar la acción."],
     [
      0,
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
     (_this select 0) params ["_identificableName", "_needHackingDeviceState"];

     private ["_position", "_attachedObject", "_identificableName"];
     private _moduleGroup = createGroup [sideLogic, true];
     private _needHackingDeviceState = if (_needHackingDeviceState == 0) then {true;} else {false;};
     "FCLA_Module_Hack_Device" createUnit [_position, _moduleGroup, "
     	 this setPos _position;
       this setVariable ['FCLA_Device_ID', _identificableName, true];
       this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
       this setVariable ['FCLA_Need_Hacking_Device', _needHackingDeviceState, true];
     	 this synchronizeObjectsAdd [_attachedObject];
     "];
     ["EL OBJETO AHORA ES HACKEABLE"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Code.paa"] call ZEN_Custom_Modules_fnc_Register;
