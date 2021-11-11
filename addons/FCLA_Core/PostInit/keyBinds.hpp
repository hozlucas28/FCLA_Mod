
/********************************************************************************|
|                              "ATAJOS DE TECLADO"                               |
|********************************************************************************/



/* -------------------------- DISTANCIA DE VISIÓN -------------------------- */

[
	["FCLA", "• General"], "FCLA_Open_VD_Key",
	["Abrir configuración de distancia de visión"],
	{
		_unit = call CBA_fnc_currentUnit;
		if (!alive _unit) exitWith {};
		[] call FCLA_Video_Settings_fnc_openDialogVD;
	},
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
		_unit = call CBA_fnc_currentUnit;
		_isNotStand = (stance _unit) != "STAND";
		_severalConditions = [_unit] call FCLA_Common_fnc_severalConditions;
		_isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
		_isNotTouchingGround = !isTouchingGround _unit;
		if ((!FCLA_Kick_Door_Allowed) || (_isNotStand) || (_severalConditions) || (_isPlayingAnimation) || (_isNotTouchingGround)) exitWith {};
		_unit spawn FCLA_Immersions_fnc_initKickDoor;
	},
	{},
  [DIK_F, [true, false, false]],
  false,
	0,
	false
] call CBA_fnc_addKeybind;



/* -------------------------------- SILBAR --------------------------------- */

[
	["FCLA", "• General"], "FCLA_Hiss_Key",
	["Silbar", "Preciona 'Tecla asignada' para que tu personaje utilize el silbato. Si no posee uno, silbara."],
	{
		_unit = call CBA_fnc_currentUnit;
		_severalConditions = [_unit, [6, 7, 12, 14, 16]] call FCLA_Common_fnc_severalConditions;
		if (_severalConditions) exitWith {};

		if ([_unit, "FCLA_Whistle"] call BIS_fnc_hasItem) then {
			[_unit, "FCLA_Whistle", 1, 200, false] call FCLA_Common_fnc_globalSay3D;
		} else {
			_randomSound = selectRandom ["FCLA_Hiss_1", "FCLA_Hiss_2"];
			[_unit, _randomSound, 1, 125, false] call FCLA_Common_fnc_globalSay3D;
		};
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
	["Posición táctica (arriba)", "Preciona 'Tecla asignada' para adoptar la posición táctica con el arma arriba."],
	{
		_unit = call CBA_fnc_currentUnit;
		_isProne = (stance _unit) == "PRONE";
		_severalConditions = [_unit] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _unit;
		_notUsingPrimaryWeapon = (currentWeapon _unit) != (primaryWeapon _unit);
		if ((_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_notUsingPrimaryWeapon)) exitWith {};


		if (!(_unit getVariable ["FCLA_Tactical_Position", false])) then {
			_unit setVariable ["FCLA_Tactical_Position", true, true];
			[_unit, "FCLA_Tactical_Position_Up", "playActionNow"] call FCLA_Common_fnc_playAnimation;

			[{
				_isProne = (stance _this) == "PRONE";
				_severalConditions = [_this] call FCLA_Common_fnc_severalConditions;
				_isNotTouchingGround = !isTouchingGround _this;
				_notUsingPrimaryWeapon = (currentWeapon _this) != (primaryWeapon _this);
				_tacticaPositionFinished = !(_this getVariable ["FCLA_Tactical_Position", false]);
				(_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_notUsingPrimaryWeapon) || (_tacticaPositionFinished);
			}, {
				if (!(_this getVariable ["FCLA_Tactical_Position", false])) exitWith {};
				_this setVariable ["FCLA_Tactical_Position", nil, true];
				[_this, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;
			}, _unit] call CBA_fnc_waitUntilAndExecute;
		} else {
			_unit setVariable ["FCLA_Tactical_Position", nil, true];
			[_unit, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;
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
	["Posición táctica (abajo)", "Preciona 'Tecla asignada' para adoptar la posición táctica con el arma abajo."],
	{
		_unit = call CBA_fnc_currentUnit;
		_isProne = (stance _unit) == "PRONE";
		_severalConditions = [_unit] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _unit;
		_notUsingPrimaryWeapon = (currentWeapon _unit) != (primaryWeapon _unit);
		if ((_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_notUsingPrimaryWeapon)) exitWith {};


		if (!(_unit getVariable ["FCLA_Tactical_Position", false])) then {
			_unit setVariable ["FCLA_Tactical_Position", true, true];
			[_unit, "FCLA_Tactical_Position_Down", "playActionNow"] call FCLA_Common_fnc_playAnimation;

			[{
				_isProne = (stance _this) == "PRONE";
				_severalConditions = [_this] call FCLA_Common_fnc_severalConditions;
				_isNotTouchingGround = !isTouchingGround _this;
				_notUsingPrimaryWeapon = (currentWeapon _this) != (primaryWeapon _this);
				_tacticaPositionFinished = !(_this getVariable ["FCLA_Tactical_Position", false]);
				(_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_notUsingPrimaryWeapon) || (_tacticaPositionFinished);
			}, {
				if (!(_this getVariable ["FCLA_Tactical_Position", false])) exitWith {};
				_this setVariable ["FCLA_Tactical_Position", nil, true];
				[_this, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;
			}, _unit] call CBA_fnc_waitUntilAndExecute;
		} else {
			_unit setVariable ["FCLA_Tactical_Position", nil, true];
			[_unit, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;
		};
	},
	{},
  [DIK_A, [true, false, true]],
	false,
	0,
	false
] call CBA_fnc_addKeybind;
