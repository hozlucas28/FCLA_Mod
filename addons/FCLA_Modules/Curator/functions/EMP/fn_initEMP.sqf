
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para generar un pulso electromagnético.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Generar PEM", {
  ["PULSO ELECTROMAGNÉTICO",
	 [
    ["SLIDER", ["Radio", "Aquellas entidades comprendidas dentro del radio definido se veran afectadas por el pulso, tomando como origen del radio la posición donde se colocó el módulo.\n• Nota: si colocas -1 todas las entidades del mapa seran afectadas."],
     [
      -1,
      5000,
      500,
      0
     ],
     false
    ],
    ["TOOLBOX", ["¿Generar jammer?", "Si se activa se generara un jammer donde ocurrio el pulso electromagnético.\n• Los jammers bloquean/interfieren las señales de comunicación, por lo que las radios se verían afectadas. El efecto es total cuando te encuentras a menos de la mitad del radio definido."],
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
     (_this select 0) params ["_rad", "_jammer"];
     _rad = [_rad, 0] call BIS_fnc_cutDecimals;
     _jammer = if (_jammer == 0) then {true;} else {false;};

     _module = createAgent ["FCLA_Module_EMP", _this select 1, [], 0, "CAN_COLLIDE"];
     _curatorLogic = getAssignedCuratorLogic player;
     _curatorLogic addCuratorEditableObjects [[_module], false];
     _module setVariable ["FCLA_Force_Deactivation", true, true];

     [_module, _rad, _jammer] spawn FCLA_Modules_fnc_spawnEMPCurator;
     ["PULSO ELECTROMAGNÉTICO GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\EMP.paa"] call ZEN_Custom_Modules_fnc_Register;