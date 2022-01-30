
/********************************************************************************|
|                              "COMANDOS DEL CHAT"                               |
|********************************************************************************/



/* ------------------------------ MODO CÁMARA ------------------------------ */

["Camera", {
  params ["_value"];
  _player = player;
  _inUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) != "";
  _isOnMap = visibleMap;
  _inCurator = !isNull findDisplay 312;
  _isNotAlive = !(alive _player);
  _inCameraMode = _player in (call ACE_Spectator_fnc_players);
  _currentControledUnit = call CBA_fnc_currentUnit;
  _cameraModeNotAllowed = !(_player getVariable ["FCLA_Camera_Mode_Allowed", false]);
  _cameraModeDisableByCurator = _player getVariable ["FCLA_Camera_Mode_Disable_By_Curator", false];
  if (_inUAV) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si estas utilizando un dron."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isOnMap) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si el mapa esta abierto."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_inCurator) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si la interfaz del Zeus esta abierta."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isNotAlive) exitWith {[{["FCLA_System_Chat", ["Debes estar vivo para utilizar este comando."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_inCameraMode) exitWith {[{["FCLA_System_Chat", ["Ya te encuentas utilizando el modo cámara."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_currentControledUnit != _player) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si estas controlando a una unidad."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if ((FCLA_Mission_Type != "Training") && (_cameraModeNotAllowed)) exitWith {[{["FCLA_System_Chat", ["El mapa no es de entrenamiento! No puedes utilizar este comando, salvo que te lo permita un Zeus."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_cameraModeDisableByCurator) exitWith {[{["FCLA_System_Chat", ["El Zeus te ha bloqueado el acceso al modo cámara."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};

  _cameraVision = if (sunOrMoon == 1) then {-2} else {-1};
  [true, false, true] call ACE_Spectator_fnc_setSpectator;
  [[0, 2], [1]] call ACE_Spectator_fnc_updateCameraModes;
  [[-2 , -1], [0, 1, 2, 3, 4, 5, 6, 7]] call ACE_Spectator_fnc_updateVisionModes;
  [allUnits, [_player]] call ACE_Spectator_fnc_updateUnits;
  [[west, east, resistance, civilian]] call ACE_Spectator_fnc_updateSides;
  [0, true, _cameraVision, getPosATL _player, getDir _player] call ACE_Spectator_fnc_setCameraAttributes;
  [format ["Mod FCLA - %1 [%2] entro al modo cámara.", name _player, getPlayerUID _player]] call ACE_Common_fnc_serverLog;
  [{["FCLA_System_Chat", [format ["• Sistema: %1 entro al modo cámara.", [_this] call FCLA_Common_fnc_getCleanName]]] call CBA_fnc_globalEvent;}, _player, 0.1] call CBA_fnc_waitAndExecute;

  [{!(_this in (call ACE_Spectator_fnc_players))}, {
    [format ["Mod FCLA - %1 [%2] salio del modo cámara.", name _this, getPlayerUID _this]] call ACE_Common_fnc_serverLog;
    ["FCLA_System_Chat", [format ["• Sistema: %1 salio del modo cámara.", [_this] call FCLA_Common_fnc_getCleanName]]] call CBA_fnc_globalEvent;
  }, _player] call CBA_fnc_waitUntilAndExecute;
}, "all"] call CBA_fnc_registerChatCommand;



/* ----------------------------- OBTENER ZEUS ------------------------------ */

["Zeus", {
  params ["_value"];
  _value = toUpper _value;
  _player = player;
  _playerUID = getPlayerUID _player;
  _inUAV = ([_player] call ACE_Common_fnc_getUavControlPosition) != "";
  _isOnMap = visibleMap;
  _isAdmin = [] call FCLA_Common_fnc_isAdmin;
  _isCurator = [_player] call FCLA_Common_fnc_isCurator;
  _isNotAlive = !(alive _player);
  _inCameraMode = _player in (call ACE_Spectator_fnc_players);
  _isNotAuthorized = !(_playerUID in FCLA_Commanders_UIDs) && !(_playerUID in FCLA_Editors_UIDs) && !(_playerUID in FCLA_Instructors_UIDs);
  _currentControledUnit = call CBA_fnc_currentUnit;
  if (_inUAV) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si estas utilizando un dron."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isOnMap) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si el mapa esta abierto."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isAdmin) exitWith {[{["FCLA_System_Chat", ["Por razones de seguridad al ser un administrador, no puedes utilizar este comando."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_isNotAlive) exitWith {[{["FCLA_System_Chat", ["Debes estar vivo para utilizar este comando."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_inCameraMode) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si te encuentras en el modo cámara."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if ((_value == "TRUE") && (_isCurator)) exitWith {[{["FCLA_System_Chat", ["Ya posees Zeus."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if ((FCLA_Mission_Type != "Training") && (_isNotAuthorized)) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando, salvo que seas editor oficial, parte de 'Mando' o instructor."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};
  if (_currentControledUnit != _player) exitWith {[{["FCLA_System_Chat", ["No puedes utilizar este comando si estas controlando a una unidad."]] call CBA_fnc_localEvent;}, [], 0.1] call CBA_fnc_waitAndExecute;};

  switch (_value) do {
    case "TRUE": {
      ["ZEN_Common_createZeus", _player] call CBA_fnc_serverEvent;
      [_player, _player getVariable ["FCLA_Insignia", FCLA_Default_Insignia]] spawn FCLA_Interactions_fnc_statementInsignias;
      [format ["Mod FCLA - %1 [%2] obtuvo Zeus a travez del comando de chat.", name _player, getPlayerUID _player]] call ACE_Common_fnc_serverLog;
      [{["FCLA_System_Chat", [format ["• Sistema: %1 obtuvo Zeus a travez del comando de chat.", [_this] call FCLA_Common_fnc_getCleanName]]] call CBA_fnc_globalEvent;}, _player, 0.1] call CBA_fnc_waitAndExecute;
    };

    case "FALSE": {
      (findDisplay 312) closeDisplay 2;
      deleteVehicle (getAssignedCuratorLogic _player);
      [_player, _player getVariable ["FCLA_Insignia", FCLA_Default_Insignia]] spawn FCLA_Interactions_fnc_statementInsignias;
      [format ["Mod FCLA - %1 [%2] solto el Zeus a travez del comando de chat.", name _player, getPlayerUID _player]] call ACE_Common_fnc_serverLog;
      [{["FCLA_System_Chat", [format ["• Sistema: %1 solto el Zeus a travez del comando de chat.", [_this] call FCLA_Common_fnc_getCleanName]]] call CBA_fnc_globalEvent;}, _player, 0.1] call CBA_fnc_waitAndExecute;
    };
  };
}, "all"] call CBA_fnc_registerChatCommand;
