
/********************************************************************************|
|                              "COMANDOS DEL CHAT"                               |
|********************************************************************************/



/* ------------------------------ MODO CÁMARA ------------------------------ */

["Camera", {
  params ["_value"];
  _inUAV = ([player] call ace_common_fnc_getUavControlPosition) != "";
  _isOnMap = visibleMap;
  _inCurator = !isNull findDisplay 312;
  _isNotAlive = !(alive player);
  _inCameraMode = player in (call ACE_Spectator_fnc_players);
  _currentControledUnit = call CBA_fnc_currentUnit;
  _cameraModeNotAllowed = !(player getVariable ["FCLA_Camera_Mode_Allowed", false]);
  if (_inUAV) exitWith {[{systemChat "No puedes utilizar este comando si estas utilizando un dron.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isOnMap) exitWith {[{systemChat "No puedes utilizar este comando si el mapa esta abierto.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_inCurator) exitWith {[{systemChat "No puedes utilizar este comando si la interfaz del Zeus esta abierta.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isNotAlive) exitWith {[{systemChat "Debes estar vivo para utilizar este comando.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_inCameraMode) exitWith {[{systemChat "Ya te encuentas utilizando el modo cámara.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_currentControledUnit != player) exitWith {[{systemChat "No puedes utilizar este comando si estas controlando a una unidad.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if ((FCLA_Mission_Type != "Training") && (_cameraModeNotAllowed)) exitWith {[{systemChat "El mapa no es de entrenamiento! No puedes utilizar este comando, salvo que te lo permita un Zeus.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

  _cameraVision = if (sunOrMoon == 1) then {-2} else {-1};
  [true, false, true] call ACE_Spectator_fnc_setSpectator;
  [[0, 2], [1]] call ACE_Spectator_fnc_updateCameraModes;
  [[-2 , -1], [0, 1, 2, 3, 4, 5, 6, 7]] call ACE_Spectator_fnc_updateVisionModes;
  [allUnits, [player]] call ACE_Spectator_fnc_updateUnits;
  [[west, east, resistance, civilian]] call ACE_Spectator_fnc_updateSides;
  [0, true, _cameraVision, getPosATL player, getDir player] call ACE_Spectator_fnc_setCameraAttributes;
  [format ["%1 entro al modo cámara.", name player]] remoteExec ["systemChat", 0];
  [format ["Mod FCLA - %1 entro al modo cámara.", name player]] call ACE_Common_fnc_serverLog;

  [{!(_this in (call ACE_Spectator_fnc_players))}, {
    [format ["%1 salio del modo cámara.", name player]] remoteExec ["systemChat", 0];
    [format ["Mod FCLA - %1 salio del modo cámara.", name _this]] call ACE_Common_fnc_serverLog;
  }, player] call CBA_fnc_waitUntilAndExecute;
}, "all"] call CBA_fnc_registerChatCommand;



/* ----------------------------- OBTENER ZEUS ------------------------------ */

_isCuratorEnhancedModLoaded = ["zen_common"] call ACE_Common_fnc_isModLoaded;
if (_isCuratorEnhancedModLoaded) then {
  ["Zeus", {
    params ["_value"];
    _inUAV = ([player] call ace_common_fnc_getUavControlPosition) != "";
    _isOnMap = visibleMap;
    _isAdmin = [] call FCLA_Common_fnc_isAdmin;
    _isCurator = [player] call FCLA_Common_fnc_isCurator;
    _isNotAlive = !(alive player);
    _isNotAuthorized = !((getPlayerUID player) in FCLA_Editors_UIDs) && !((getPlayerUID player) in FCLA_Commanders_UIDs) && !((getPlayerUID player) in FCLA_Instructors_UIDs);
    if (_inUAV) exitWith {[{systemChat "No puedes utilizar este comando si estas utilizando un dron.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
    if (_isOnMap) exitWith {[{systemChat "No puedes utilizar este comando si el mapa esta abierto.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
    if (_isAdmin) exitWith {[{systemChat "Por razones de seguridad al ser un administrador, no puedes utilizar este comando.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
    if (_isCurator) exitWith {[{systemChat "Ya posees Zeus.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
    if (_isNotAlive) exitWith {[{systemChat "Debes estar vivo para utilizar este comando.";}, [], 0.1] call CBA_fnc_waitAndExecute;};
    if (_isNotAuthorized) exitWith {[{systemChat "No puedes utilizar este comando, salvo que seas editor oficial, parte de 'Mando' o instructor.";}, [], 0.1] call CBA_fnc_waitAndExecute;};

    switch (Upper _value) do {
      case "TRUE": {
        [player] call ZEN_Common_fnc_createZeus;
        if (!ACE_Zeus_zeusAscension) then {[format ["%1 obtuvo Zeus a travez del comando de chat.", name player]] remoteExec ["systemChat", 0];};
        [format ["Mod FCLA - %1 obtuvo Zeus a travez del comando de chat.", name player]] call ACE_Common_fnc_serverLog;
      };

      case "FALSE": {
        deleteVehicle (getAssignedCuratorLogic player);
        [format ["%1 solto el Zeus a travez del comando de chat.", name player]] remoteExec ["systemChat", 0];
        [format ["Mod FCLA - %1 solto el Zeus a travez del comando de chat.", name player]] call ACE_Common_fnc_serverLog;
      };
    };
  }, "all"] call CBA_fnc_registerChatCommand;
};
