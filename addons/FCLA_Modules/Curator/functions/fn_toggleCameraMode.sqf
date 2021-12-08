
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para alternar el acceso que tiene la unidad al modo cámara.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Verificar condición.
if (!isMultiplayer) exitWith {};


["FCLA", "Alternar modo cámara", {
  params ["_position", "_attachedObject"];
  _hasNotAccess = !(_attachedObject getVariable ["FCLA_Camera_Mode_Allowed", false]);
  if ((isNull _attachedObject) || !(_attachedObject in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA UNIDAD"] call ZEN_Common_fnc_showMessage;};

  if (_hasNotAccess) then {
    _attachedObject setVariable ["FCLA_Camera_Mode_Allowed", true, true];
    _attachedObject setVariable ["FCLA_Camera_Mode_Disable_By_Curator", nil, true];
    ["LA UNIDAD AHORA TIENE ACCESO AL MODO CÁMARA"] call ZEN_Common_fnc_showMessage;
  } else {
    _attachedObject setVariable ["FCLA_Camera_Mode_Allowed", nil, true];
    _attachedObject setVariable ["FCLA_Camera_Mode_Disable_By_Curator", true, true];
    ["LA UNIDAD YA NO TIENE ACCESO AL MODO CÁMARA"] call ZEN_Common_fnc_showMessage;
  };
}, "\FCLA_Modules\Curator\data\Camera.paa"] call ZEN_Custom_Modules_fnc_Register;
