
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_initPlateNumber

Description:
    Genera una acción (externa) del menú ACE 3D, que permitira ver el número
    de placa/patente del vehículo enviado. Solo funciona con vehículos.

Arguments:
    _vehicle - vehículo al que se le agregara esta acción.

Example:
		  [vehicle player] spawn FCLA_Interactions_fnc_initPlateNumber;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_vehicle"];



/* -------------------------------- EXTERNA -------------------------------- */

_Condition = {
  params ["_target", "_player", "_params"];
  (FCLA_Plate_Number_Allowed);
};

_Statement = {
  params ["_target", "_player", "_params"];
  _plate = getPlateNumber _target;
  [["Número de patente:", 1.25], [_plate, 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
};

_PlateNumber = ["Ver_Patente", "Ver patente", "\FCLA_Interactions\Plate_Number\data\Icon.paa", _Statement, _Condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 0, ["ACE_MainActions"], _PlateNumber] call ace_interact_menu_fnc_addActionToObject;
