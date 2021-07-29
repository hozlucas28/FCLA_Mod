
/********************************************************************************|
|                              "COMANDOS DEL CHAT"                               |
|********************************************************************************/



/* ------------------------------ MODO CÁMARA ------------------------------ */

["Camera", {
  params ["_value"];

  switch (_value) do {
    case "true": {
      if (FCLA_Mission_Type != "Training") exitWith {[{systemChat "El mapa no es de entrenamiento! No tendras acceso al modo cámara, salvo que te lo conceda un Zeus.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

      _actionId = [player,
       "<t color='#58D68D'>Acceder al 'Modo cámara'</t>",
       "\FCLA_Data\Actions\Camera.paa",
       "\FCLA_Data\Actions\Camera.paa",
       "!(_caller getVariable ['FCLA_Camera_Mode_On', false])",
       "!(_caller getVariable ['FCLA_Camera_Mode_On', false])",
       {},
       {},
       {
         params ["_target", "_caller", "_actionId", "_arguments"];
         [] call BIS_fnc_VRFadeIn;
         _caller setVariable ["FCLA_Camera_Mode_On", true, true];
         [format ["Mod FCLA - %1 accedio al 'Modo cámara'.", name _caller]] remoteExec ["diag_log", 2];
         [_caller] remoteExec ["FCLA_Development_fnc_draw3DCameraMode", -2];
         [] spawn FCLA_Development_fnc_initCameraMode;

         [{
           params ["_caller"];
           (isNil {_caller getVariable "FCLA_Camera_Mode_On"}) || (!alive _caller);
         }, {
           params ["_caller"];
           if (alive _caller) exitWith {};
           _caller setVariable ["FCLA_Camera_Mode_On", nil, true];
           [format ["Mod FCLA - %1 ha salido del 'Modo cámara'.", name _caller]] remoteExec ["diag_log", 2];
         }, [player]] call CBA_fnc_waitUntilAndExecute;
       },
       {},
       [],
       1,
       1000,
       false,
      false] call BIS_fnc_holdActionAdd;

      _name = name player;
      [format ["%1 activo el modo cámara.", _name]] remoteExec ["systemChat", -2];
      player setVariable ["FCLA_Camera_Mode_actionId", _actionId, true];
    };

    case "false": {
      if (isNil {player getVariable "FCLA_Camera_Mode_actionId"}) exitWith {};
      _name = name player;
      _actionId = player getVariable "FCLA_Camera_Mode_actionId";
      [player, _actionId] call BIS_fnc_holdActionRemove;
      [format ["%1 desactivo el modo cámara.", _name]] remoteExec ["systemChat", -2];
      player setVariable ["FCLA_Camera_Mode_forceClose", true, true];
      player setVariable ["FCLA_Camera_Mode_forceClose", nil, true];
    };

    default {[{systemChat "Valor incorrecto! Debe poner un valor booleano (true/false).";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  };
}, "all"] call CBA_fnc_registerChatCommand;
