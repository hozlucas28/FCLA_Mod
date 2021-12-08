
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo que permite activar/desactivar las turbulencias de la aeronave.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Alternar turbulencias", {
  params ["_position", "_attachedObject"];
  _allAirVehicles = vehicles select {_x isKindOf "Air"};
  _isAircraftTurbulencesActivated = _attachedObject getVariable ["FCLA_Disable_Aircraft_Turbulences", false];
  if (!FCLA_Aircraft_Turbulence) exitWith {["¡LAS TURBULENCIAS ESTAN DESACTIVADAS POR EL ADDON OPTION: FCLA INMERSIONES!"] call ZEN_Common_fnc_showMessage;};
  if ((isNull _attachedObject) || !(_attachedObject in _allAirVehicles)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN VEHÍCULO AÉREO"] call ZEN_Common_fnc_showMessage;};

  if (_isAircraftTurbulencesActivated) then {
    _attachedObject setVariable ["FCLA_Disable_Aircraft_Turbulences", nil, true];
    ["EL VEHÍCULO SERA AFECTADO POR LAS TURBULENCIAS"] call ZEN_Common_fnc_showMessage;
  } else {
    _attachedObject setVariable ["FCLA_Disable_Aircraft_Turbulences", true, true];
    ["EL VEHÍCULO YA NO SE VERA AFECTADO POR LAS TURBULENCIAS"] call ZEN_Common_fnc_showMessage;
  };
}, "\FCLA_Modules\Curator\data\Weather.paa"] call ZEN_Custom_Modules_fnc_Register;
