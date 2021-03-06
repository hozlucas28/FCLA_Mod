
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite hackear un dispositivo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Dispositivo hackeable", {
  params ["_position", "_attachedObject"];
  if ((isNull _attachedObject) || (_attachedObject in allUnits)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UN OBJETO"] call ZEN_Common_fnc_showMessage;};


  ["HACKEO DE DISPOSITIVO",
	 [
    ["EDIT", ["Identificador", "Nombre personalizado para poder reconocer al dispositivo, cuando se le informe a los Zeus que ha sido hackeado.\n- Si no se define un identificador no se informara a los Zeus."],
     [
      "",
      nil,
      nil
     ],
     true
    ],
    ["TOOLBOX", ["Se necesita un dispositivo", "Si se activa se necesitara de un dispositivo de hackeo para realizar la accion."],
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
     (_this select 0) params ["_identificableName", "_needHackingDevice"];
     _needHackingDevice = if (_needHackingDevice == 0) then {true;} else {false;};

     [_attachedObject, "hackear dispositivo", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa", _needHackingDevice] call FCLA_Common_fnc_hackDevice;
     if (_identificableName != "") then {
       [{(!alive (_this select 1)) || ((_this select 1) getVariable ["FCLA_Hacked", false])}, {
         if (!alive (_this select 1)) exitWith {};
         _unitsWithCurator = [];
         {
           _curatorUnit = getAssignedCuratorUnit _attachedObject;
           if (isNull _curatorUnit) exitWith {};
           _unitsWithCurator pushBack _curatorUnit;
         } forEach allCurators;
         ["FCLA_GUI_Message", ["DISPOSITIVO HACKEADO", "El dispositivo '" + (_this select 0) + "' ha sido hackeado con exito."], _unitsWithCurator] call CBA_fnc_targetEvent;
       }, [_identificableName, _attachedObject]] call CBA_fnc_waitUntilAndExecute;
     };
     ["EL OBJETO AHORA ES HACKEABLE"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Code.paa"] call ZEN_Custom_Modules_fnc_Register;
