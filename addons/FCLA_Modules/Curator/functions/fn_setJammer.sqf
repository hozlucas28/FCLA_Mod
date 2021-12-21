
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para generar un jammer que bloquea/interfiere las señales de
 * comunicación de las radios de onda corta y larga, incluyendo vehículos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Jammer", {
  if (isNull (_this select 1)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UNA ENTIDAD"] call ZEN_Common_fnc_showMessage;};
  ["JAMMER",
  [
   ["TOOLBOX", ["Desactivable", "Si se activa se podra desactivar el jammer a travez de una acción."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["¿Afectar vehículos?", "Si se activa las radios de los vehículos tambien seran afectadas."],
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
    (_this select 0) params ["_deactivatable", "_affectVehicles"];
    _deactivatable = if (_deactivatable == 0) then {true;} else {false;};
    _affectVehicles = if (_affectVehicles == 0) then {true;} else {false;};
    ["JAMMER GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this select 1] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Jammer.paa"] call ZEN_Custom_Modules_fnc_Register;
