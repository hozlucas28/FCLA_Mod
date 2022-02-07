
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Alterna el acceso que tiene la unidad al modo camara.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Verificar condicion.
if (!isMultiplayer) exitWith {};


["FCLA", "Alternar modo camara", {
  params ["_position", "_attachedObject"];
  _hasNotAccess = !(_attachedObject getVariable ["FCLA_Camera_Mode_Allowed", false]);
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MODULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};

  if (_hasNotAccess) then {
    _attachedObject setVariable ["FCLA_Camera_Mode_Allowed", true, true];
    ["LA UNIDAD AHORA TIENE ACCESO AL MODO CAMARA"] call ZEN_Common_fnc_showMessage;
  } else {
    _attachedObject setVariable ["FCLA_Camera_Mode_Allowed", nil, true];
    ["LA UNIDAD YA NO TIENE ACCESO AL MODO CAMARA"] call ZEN_Common_fnc_showMessage;
  };
}, "\FCLA_Modules\Curator\data\Camera.paa"] call ZEN_Custom_Modules_fnc_Register;
