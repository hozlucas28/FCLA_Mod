
/********************************************************************************|
|                              "COMANDOS DEL CHAT"                               |
|********************************************************************************/



/* ------------------------------ MODO CÁMARA ------------------------------ */

["Camera", {
  params ["_value"];
  _isNotAlive = alive player;
  _currentControledUnit = call CBA_fnc_currentUnit;
  if (_isNotAlive) exitWith {[{systemChat "Debes estar vivo para hacer uso de este comando.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_currentControledUnit != player) exitWith {[{systemChat "No puedes ejecutar este comando si te encuentras controlando a una unidad.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

  switch (_value) do {
    case "true": {
      if (FCLA_Mission_Type != "Training") exitWith {[{systemChat "El mapa no es de entrenamiento! No tendras acceso al modo cámara, salvo que te lo conceda un Zeus.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

      _actionId = [player,
       "<t color='#58D68D'>Acceder al 'Modo cámara'</t>",
       "\FCLA_Data\Actions\Camera.paa",
       "\FCLA_Data\Actions\Camera.paa",
       "(alive _target) && !(_this getVariable ['FCLA_Camera_Mode_On', false])",
       "(alive _target) && !(_caller getVariable ['FCLA_Camera_Mode_On', false])",
       {},
       {},
       {
         params ["_target", "_caller", "_actionId", "_arguments"];
         [] call BIS_fnc_VRFadeIn;
         [] spawn FCLA_Development_fnc_initCameraMode;
         _caller setVariable ["FCLA_Camera_Mode_On", true, true];
         [format ["Mod FCLA - %1 accedio al 'Modo cámara'.", name _caller]] call ACE_Common_fnc_serverLog;

         [{
           params ["_caller"];
           (isNil {_caller getVariable "FCLA_Camera_Mode_On"}) || !(alive _caller);
         }, {
           params ["_caller"];
           if (alive _caller) exitWith {};
           _caller setVariable ["FCLA_Camera_Mode_On", nil, true];
           [format ["Mod FCLA - %1 ha salido del 'Modo cámara'.", name _caller]] call ACE_Common_fnc_serverLog;
         }, [_caller]] call CBA_fnc_waitUntilAndExecute;
       },
       {},
       [],
       1,
       1000,
       false,
      false] call BIS_fnc_holdActionAdd;

      player setVariable ["FCLA_Camera_Mode_actionId", _actionId, true];
      [format ["%1 activo el modo cámara.", name player]] remoteExec ["systemChat", 0];
    };

    case "false": {
      if (isNil {player getVariable "FCLA_Camera_Mode_actionId"}) exitWith {};
      _actionId = player getVariable "FCLA_Camera_Mode_actionId";
      [player, _actionId] call BIS_fnc_holdActionRemove;
      [format ["%1 desactivo el modo cámara.", name player]] remoteExec ["systemChat", 0];
    };

    default {[{systemChat "Valor incorrecto! Debe poner un valor booleano (true/false).";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  };
}, "all"] call CBA_fnc_registerChatCommand;



/* -------------------------- ASCENDER COMO ZEUS --------------------------- */

["Zeus", {
  params ["_value"];
  _isZeus = [player] call FCLA_Development_fnc_isCurator;
  _isAdmin = [true] call FCLA_Development_fnc_isAdmin;
  _playerUID = getPlayerUID player;
  _isNotAlive = alive player;
  _currentControledUnit = call CBA_fnc_currentUnit;
  _isZeusEnhancedModNotLoaded = !(["zen_common"] call ACE_Common_fnc_isModLoaded);
  if (_isZeus) exitWith {[{systemChat "Ya eres Zeus.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isAdmin) exitWith {[{systemChat "Por razones de seguridad al ser el administrador, no puedes hacer uso de este comando.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isNotAlive) exitWith {[{systemChat "Debes estar vivo para hacer uso de este comando.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isZeusEnhancedModNotLoaded) exitWith {[{systemChat "El comando no puede ejecutarse porque no tienes cargado el mod 'Zeus Enhanced'.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_currentControledUnit != player) exitWith {[{systemChat "No puedes ejecutar este comando si te encuentras controlando a una unidad.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

  switch (_value) do {
    case "true": {
      _isNotEditor = !(_playerUID in FCLA_Editors_UIDs)
      _isNotTrainingMission = FCLA_Mission_Type != "Training";
      if ((_isNotEditor) && (_isNotTrainingMission)) exitWith {[{systemChat "El mapa no es de entrenamiento! No podras obtener zeus, salvo que seas un editor ó que te ascienda el administrador.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

      [player] call ZEN_Common_fnc_createZeus;
      [["Zeus:", 1.25], ["| √ |", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
      [format ["Mod FCLA - %1 obtuvo Zeus a travez del comando de chat 'Zeus'.", name player]] call ACE_Common_fnc_serverLog;
    };

    case "false": {
      _isNotZeus = !([player] call FCLA_Development_fnc_isCurator);
      _curatorModule = getAssignedCuratorLogic player;
      if (_isNotZeus) exitWith {[{systemChat "Nunca tuviste Zeus.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

      deleteVehicle _curatorModule;
      [["Zeus:", 1.25], ["| X |", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;
      [format ["Mod FCLA - %1 solto el Zeus a travez del comando de chat 'Zeus'.", name player]] call ACE_Common_fnc_serverLog;
    };

    default {[{systemChat "Valor incorrecto! Debe poner un valor booleano (true/false).";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  };
}, "all"] call CBA_fnc_registerChatCommand;
