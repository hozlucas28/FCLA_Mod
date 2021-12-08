
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
    ["EDIT", ["Nombre", "Nombre personalizado para poder reconocer al dispositivo, cuando se nos informe que ha sido hackeado."],
     [
      "",
      nil,
      nil
     ],
     true
    ],
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
     (_this select 0) params ["_identifiableName", "_needHackingDeviceState"];
     _needHackingDeviceState = if (_needHackingDeviceState == 0) then {true;} else {false;};

     ["EL OBJETO AHORA ES HACKEABLE"] call ZEN_Common_fnc_showMessage;
     [_this select 1, "Hackear dispositivo", _needHackingDeviceState] call FCLA_Common_fnc_hackDevice;

     [{
       params ["_curator", "_identifiableName", "_device"];
       (!alive _device) || (_device getVariable ["FCLA_Hacked", false]);
     }, {
       params ["_curator", "_identifiableName", "_device"];
       if ((!alive _curator) || (!alive _device)) exitWith {};
       ["FCLA_Hint_Silent", ["EL DISPOSITIVO " + _identifiableName + " HA SIDO HACKEADO."], _curator] call CBA_fnc_targetEvent;
     }, [player, _identifiableName, _this select 1]] call CBA_fnc_waitUntilAndExecute;
   }, {}, _attachedObject] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Code.paa"] call ZEN_Custom_Modules_fnc_Register;
