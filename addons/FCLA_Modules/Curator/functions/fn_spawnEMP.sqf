
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
     (_this select 1) params ["_position", "_attachedObject"];
     _jammer = if (_jammer == 0) then {true;} else {false;};

     private "_position";
     private _rad = round _rad;
     private _EMPModuleGroup = createGroup [sideLogic, true];
     "FCLA_Module_EMP" createUnit [_position, _EMPModuleGroup, "
       this setPos _position;
       this setVariable ['FCLA_Jammer', false, true];
       this setVariable ['objectArea', [_rad, _rad, 0, false, _rad], true];
       this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
     "];

     if (_jammer) then {
       private _jammerModuleGroup = createGroup [sideLogic, true];
       "FCLA_Module_Jammer" createUnit [_position, _jammerModuleGroup, "
       	this setPos _position;
       	this setVariable ['FCLA_Jammer_ID', '', true];
       	this setVariable ['FCLA_Deactivatable', false, true];
       	this setVariable ['FCLA_Affect_Vehicles', true, true];
       	this setVariable ['FCLA_Need_Hacking_Device', false, true];
       	this setVariable ['objectArea', [_rad, _rad, 0, false, _rad], true];
       	this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
       "];

       _module = nearestObject [_position, "FCLA_Module_Jammer"];
       _curatorLogic = getAssignedCuratorLogic player;
       _curatorLogic addCuratorEditableObjects [[_module], false];
     };

     ["PULSO ELECTROMAGNÉTICO GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\EMP.paa"] call ZEN_Custom_Modules_fnc_Register;
