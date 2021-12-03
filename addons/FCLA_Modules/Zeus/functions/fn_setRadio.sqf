
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite agregar ó quitar la radio del vehículo. Ademas de modificar el bando
 * al que está pertenece.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar radio (TFAR)", {
  params ["_position", "_attachedObject"];
  _getVehicleSide = _attachedObject call TFAR_fnc_getVehicleSide;
  if ((isNull _attachedObject) || !(_attachedObject in vehicles)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN VEHÍCULO"] call ZEN_Common_fnc_showMessage;};


  _hasRadio = if (_attachedObject call TFAR_fnc_hasVehicleRadio) then {0;} else {1;};
  _vehicleName = getText (configFile >> "CfgVehicles" >> (typeOf _attachedObject) >> "displayName");
  _vehicleSide = switch (_getVehicleSide) do {
    case WEST: {0;};
    case EAST: {1;};
    case GUER: {2;};
    default {0;};
  };
  _this = [_attachedObject, _vehicleName, _hasRadio, _vehicleSide];


  [_this select 1,
	 [
    ["TOOLBOX", "¿Añadir radio?",
     [
      _this select 2,
      1,
      2,
      ["Si", "No"],
      nil
     ]
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
      _this select 3
     ]
    ]
	 ],
   {
     (_this select 0) params ["_state", "_newSide"];
     (_this select 1) params ["_attachedObject"];

     _state = if (_state == 0) then {true;} else {false;};
     _attachedObject setVariable ["tf_side", _newSide, true];
     _attachedObject setVariable ["tf_hasRadio", _state, true];

     _text = if (_state) then {"RADIO AÑADIDA AL VEHÍCULO CON ÉXITO";} else {"SE HA ELIMINADO LA RADIO DEL VEHÍCULO";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\a3\Modules_F_Curator\Data\portraitRadio_ca.paa"] call ZEN_Custom_Modules_fnc_Register;
