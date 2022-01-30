
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que el vehículo reciba un daño fatal, dejandolo con un daño total
 * sin provocar su destrucción.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Alternar DAV", {
  params ["_position", "_attachedObject"];
  _handle = _attachedObject getVariable ["FCLA_Advanced_Vehicle_Damage_ID", -1];
  if (ACE_Vehicle_Damage_Enabled) exitWith {["¡EL DAÑO AVANZADO DE VEHÍCULO (ACE) DEBE ESTAR DESACTIVADO!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in vehicles)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN VEHÍCULO"] call ZEN_Common_fnc_showMessage;};


  if (_handle != -1) exitWith {
    _attachedObject removeEventHandler ["Dammaged", _handle];
    _attachedObject setVariable ["FCLA_Advanced_Vehicle_Damage_ID", nil, true];
    ["SE HA DESACTIVADO EL DAÑO AVANZADO EN EL VEHÍCULO"] call ZEN_Common_fnc_showMessage;
  };


  ["DAÑO AVANZADO DE VEHÍCULO (DAV)",
	 [
    ["TOOLBOX", ["¿Destruir armas?", "Si se activa se destruiran las armas de la tripulación, cuando el vehiculo reciba un daño fatal."],
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     false
    ],
    ["TOOLBOX", ["¿Destruir items?", "Si se activa se destruiran los items de la tripulación, cuando el vehiculo reciba un daño fatal."],
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
     (_this select 0) params ["_damageWeapons", "_damageItems"];

     _damageItems = if (_damageItems == 0) then {true;} else {false;};
     _damageWeapons = if (_damageWeapons == 0) then {true;} else {false;};
     [_attachedObject, _damageWeapons, _damageItems] call FCLA_Common_fnc_setAdvancedVehicleDamage;
     ["SE HA ACTIVADO EL DAÑO AVANZADO EN EL VEHÍCULO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Vehicle.paa"] call ZEN_Custom_Modules_fnc_Register;
