
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Agrega/Quita la radio del vehículo. Ademas de modificar el bando al que pertenece.
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
     _hasRadio = if (_hasRadio == 0) then {true;} else {false;};
     _radioSideSelected = toLower _radioSideSelected;

     _attachedObject setVariable ["tf_hasRadio", _hasRadio, true];
     _attachedObject setVariable ["tf_side", _radioSideSelected, true];
     _text = if (_hasRadio) then {"RADIO AÑADIDA AL VEHÍCULO CON ÉXITO";} else {"SE HA ELIMINADO LA RADIO DEL VEHÍCULO";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Radio.paa"] call ZEN_Custom_Modules_fnc_Register;
