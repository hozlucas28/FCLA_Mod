
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que permite agregar ó quitar la radio del vehículo. Ademas de
 * modificar el bando al que está pertenece.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar radio (TFAR)", {
  params ["_position", "_attachedObject"];
  _vehicleSide = _attachedObject call TFAR_fnc_getVehicleSide;
  if ((isNull _attachedObject) || !(_attachedObject in vehicles)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN VEHÍCULO"] call ZEN_Common_fnc_showMessage;};


  _vehicleName = getText (configFile >> "CfgVehicles" >> (typeOf _attachedObject) >> "displayName");
  _originalRadioState = if (_attachedObject call TFAR_fnc_hasVehicleRadio) then {0;} else {1;};
  _originalRadioSide = switch (_vehicleSide) do {
    case WEST: {0;};
    case EAST: {1;};
    case GUER: {2;};
    default {0;};
  };


  [_vehicleName,
	 [
    ["TOOLBOX", "¿Añadir radio?",
     [
      _originalRadioState,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ],
    ["COMBO", "Bando",
     [
      [
       "west",
       "east",
       "guer"
      ],
      [
       "BLUFOR",
       "OPFOR",
       "Independiente"
      ],
      _originalRadioSide
     ],
     true
    ]
	 ],
   {
     (_this select 1) params ["_position", "_attachedObject"];
     (_this select 0) params ["_hasRadio", "_radioSideSelected"];

     private ["_position", "_attachedObject"];
     private _moduleGroup = createGroup [sideLogic, true];
     private _hasRadio = if (_hasRadio == 0) then {true;} else {false;};
     private _radioSideSelected = toLower _radioSideSelected;
     "FCLA_Module_Radio" createUnit [_position, _moduleGroup, "
       this setPos _position;
       this setVariable ['FCLA_Has_Radio', _hasRadio, true];
       this setVariable ['FCLA_Radio_Side', _radioSideSelected, true];
       this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
       this synchronizeObjectsAdd [_attachedObject];
     "];

     _text = if (_hasRadio) then {"RADIO AÑADIDA AL VEHÍCULO CON ÉXITO";} else {"SE HA ELIMINADO LA RADIO DEL VEHÍCULO";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Radio.paa"] call ZEN_Custom_Modules_fnc_Register;
