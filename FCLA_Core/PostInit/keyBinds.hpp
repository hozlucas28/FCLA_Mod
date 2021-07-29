
/********************************************************************************|
|                              "ATAJOS DE TECLADO"                               |
|********************************************************************************/



/* -------------------------- DISTANCIA DE VISIÓN -------------------------- */

[
	["FCLA", "• General"], "FCLA_Open_VD_Dialog_Key",
	["Abrir configuración de distancia de visión"],
	{[] call FCLA_Video_Settings_fnc_openDialogVD;},
	{},
  [DIK_BACKSLASH, [false, true, false]],
  false,
	0,
	false
] call CBA_fnc_addKeybind;



/* ----------------------------- PATEAR PUERTA ----------------------------- */

[
	["FCLA", "• General"], "FCLA_Kick_Door_Key",
	["Patear puerta", "Preciona 'Tecla asignada' para abrir una puerta que este cerrada."],
	{
		_isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
		_inVehicle = !isNull objectParent player;
		_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
		_inZeus = !isNull findDisplay 312;
		_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
		_inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

		if ((!FCLA_Kick_Door_Allowed) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
		[player] execVM "\FCLA_Immersions\Kick_Door\Init.sqf";
	},
	{},
  [DIK_F, [true, false, false]],
  false,
	0,
	false
] call CBA_fnc_addKeybind;



/* --------------------- ABRIR PUERTA PROGRESIVAMENTE ---------------------- */

[
	["FCLA", "• General"], "FCLA_POD_Hold_Key",
	["Abrir puerta progresivamente", "Preciona 'Tecla asignada' + Rueda del mouse para abrir progresivamente la puerta que estes mirando."],
	{
		_inVehicle = !isNull objectParent player;
		_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
		_inZeus = !isNull findDisplay 312;
		_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
		_inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

		if ((_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
		missionNamespace setVariable ["FCLA_POD_Activated", true];
	},
	{missionNamespace setVariable ["FCLA_POD_Activated", false];},
  [DIK_TAB, [false, false, false]],
  false,
	0,
	false
] call CBA_fnc_addKeybind;



/* -------------------------------- SILBAR --------------------------------- */

[
	["FCLA", "• General"], "Hiss_Key",
	["Silbar","Preciona 'Tecla asignada' para que tu personaje silbe."],
	{
		_isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
		_inVehicle = !isNull objectParent player;
		_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
		_inZeus = !isNull findDisplay 312;
		_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
		_inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];
		_playingSound = player getVariable ["FCLA_Playing_Sound", false];

		if ((_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode) || (_playingSound)) exitWith {};
		[player, selectRandom ["FCLA_Hiss_1", "FCLA_Hiss_2"], 100] call CBA_fnc_globalSay3d;
		player setVariable ["FCLA_Playing_Sound", true, true];

		[{
			params ["_unit"];
			_unit setVariable ["FCLA_Playing_Sound", nil, true];
		}, [_unit], 1] call CBA_fnc_waitAndExecute;
	},
	{},
  [DIK_T, [true, false, false]],
	false,
	0,
	false
] call CBA_fnc_addKeybind;



/* -------------------------- POSICIONES TÁCTICAS -------------------------- */

[
	["FCLA", "• General"], "FCLA_Tactical_Position_Up_Key",
	["Posición táctica (arriba)","Preciona 'Tecla asignada' para adoptar la posición táctica con el arma arriba."],
	{
		_notUsingPrimaryWeapon = currentWeapon player != primaryWeapon player;
		_isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
		_isProne = stance player == "PRONE";
		_inVehicle = !isNull objectParent player;
		_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
		_inZeus = !isNull findDisplay 312;
		_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
		_inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];
		_inTacticalPosition = player getVariable ["FCLA_inTacticalPosition", false];
		if ((_notUsingPrimaryWeapon) || (_isSwimming) || (_isProne) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};

		switch (_inTacticalPosition) do {
			case true: {
				player playActionNow "FCLA_Animation_tacticalPosition_End";
				player setVariable ["FCLA_inTacticalPosition", nil, true];
			};

			case false: {
				player playActionNow "FCLA_Animation_tacticalPosition_Up";
				player setVariable ["FCLA_inTacticalPosition", true, true];

				[{
					_notUsingPrimaryWeapon = currentWeapon player != primaryWeapon player;
					_isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
					_isProne = stance player == "PRONE";
					_inVehicle = !isNull objectParent player;
					_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
					_inZeus = !isNull findDisplay 312;
					_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
					(isNil {player getVariable "FCLA_inTacticalPosition"}) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_isProne) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit);
				}, {
					if (isNil {player getVariable "FCLA_inTacticalPosition"}) exitWith {};
					player playActionNow "FCLA_Animation_tacticalPosition_End";
			    player setVariable ["FCLA_inTacticalPosition", nil, true];
				}, [player]] call CBA_fnc_waitUntilAndExecute;
			};
		};
	},
	{},
  [DIK_D, [true, false, true]],
	false,
	0,
	false
] call CBA_fnc_addKeybind;


[
	["FCLA", "• General"], "FCLA_Tactical_Position_Down_Key",
	["Posición táctica (abajo)","Preciona 'Tecla asignada' para adoptar la posición táctica con el arma abajo."],
	{
		_notUsingPrimaryWeapon = currentWeapon player != primaryWeapon player;
		_isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
		_isProne = stance player == "PRONE";
		_inVehicle = !isNull objectParent player;
		_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
		_inZeus = !isNull findDisplay 312;
		_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
		_inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];
		_inTacticalPosition = player getVariable ["FCLA_inTacticalPosition", false];
		if ((_notUsingPrimaryWeapon) || (_isSwimming) || (_isProne) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};

		switch (_inTacticalPosition) do {
			case true: {
				player playActionNow "FCLA_Animation_tacticalPosition_End";
				player setVariable ["FCLA_inTacticalPosition", nil, true];
			};

			case false: {
				player playActionNow "FCLA_Animation_tacticalPosition_Down";
				player setVariable ["FCLA_inTacticalPosition", true, true];

				[{
					_notUsingPrimaryWeapon = currentWeapon player != primaryWeapon player;
					_isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
					_isProne = stance player == "PRONE";
					_inVehicle = !isNull objectParent player;
					_inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
					_inZeus = !isNull findDisplay 312;
					_controllingUnit = ([] call CBA_fnc_currentUnit) != player;
					(isNil {player getVariable "FCLA_inTacticalPosition"}) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_isProne) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit);
				}, {
					if (isNil {player getVariable "FCLA_inTacticalPosition"}) exitWith {};
					player playActionNow "FCLA_Animation_tacticalPosition_End";
			    player setVariable ["FCLA_inTacticalPosition", nil, true];
				}, [player]] call CBA_fnc_waitUntilAndExecute;
			};
		};
	},
	{},
  [DIK_A, [true, false, true]],
	false,
	0,
	false
] call CBA_fnc_addKeybind;



/* ----------------------------- PALOS DE LUZ ------------------------------ */

[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Engines_On_Key",
 ["Señal - Encender motores"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
	 player switchMove "Acts_JetsMarshallingEnginesOn_in";
	 [["Señal:", 1], ["Encender motores.", 1, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
 },
 {},
 [DIK_NUMPAD1, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Engines_Off_Key",
 ["Señal - Apagar motores"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Apagar motores.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingEnginesOff_in";
 },
 {},
 [DIK_NUMPAD2, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Straight_Key",
 ["Señal - Recto"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Recto.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingStraight_in";
 },
 {},
 [DIK_NUMPAD3, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Slow_Key",
 ["Señal - Despacio"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Despacio.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingSlow_in";
 },
 {},
 [DIK_NUMPAD4, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Right_Key",
 ["Señal - Derecha"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Derecha.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingRight_in";
 },
 {},
 [DIK_NUMPAD5, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Left_Key",
 ["Señal - Izquierda"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Izquierda.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingLeft_in";
 },
 {},
 [DIK_NUMPAD6, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Normal_Stop_Key",
 ["Señal - Alto"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Alto.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingStop_in";
 },
 {},
 [DIK_NUMPAD7, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;


[
 ["FCLA", "• Palos de luz"], "FCLA_Light_Sticks_Emergency_Stop_Key",
 ["Señal - Alto de emergencia"],
 {
	 _notUsingLightSticks = hmd player != "FCLA_Light_Sticks";
	 _notUsingPrimaryWeapon = currentWeapon player != "";
	 _isSwimming = (surfaceIsWater (getPos player)) && (vehicle player == player);
	 _inVehicle = !isNull objectParent player;
	 _inUAV = !(isNull (getConnectedUAV player)) && (cameraOn == (getConnectedUAV player));
	 _inZeus = !isNull findDisplay 312;
	 _controllingUnit = ([] call CBA_fnc_currentUnit) != player;
	 _inCameraMode = player getVariable ["FCLA_Camera_Mode_On", false];

	 if ((_notUsingLightSticks) || (_notUsingPrimaryWeapon) || (_isSwimming) || (_inVehicle) || (_inUAV) || (_inZeus) || (_controllingUnit) || (_inCameraMode)) exitWith {};
   [["Señal:", 1.25], ["Alto de emergencia.", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_notify;
	 player switchMove "Acts_JetsMarshallingEmergencyStop_in";
 },
 {},
 [DIK_NUMPAD8, [true, false, true]],
 false,
 0,
 false
] call CBA_fnc_addKeybind;
