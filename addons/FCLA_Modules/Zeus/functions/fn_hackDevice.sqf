
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite hackear el dispositivo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Dispositivo hackeable", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || (_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN OBJETO"] call ZEN_Common_fnc_showMessage;};


  ["HACKEO DE DISPOSITIVO",
	 [
    ["TOOLBOX", ["¿Se necesita un dispositivo?", "Si se activa se necesitara de un dispositivo de hackeo para realizar la acción"],
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
     (_this select 0) params ["_needHackingDeviceStateSelected"];
     _needHackingDeviceStateSelected = if (_needHackingDeviceStateSelected == 0) then {true;} else {false;};
     [_this select 1, "Hackear dispositivo", _needHackingDeviceStateSelected] call FCLA_Common_fnc_hackDevice;
     ["EL OBJETO AHORA ES HACKEABLE"] call ZEN_Common_fnc_showMessage;
   }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\x\zen\addons\modules\ui\code_ca.paa"] call ZEN_Custom_Modules_fnc_Register;
