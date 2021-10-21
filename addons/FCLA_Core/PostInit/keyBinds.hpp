
/********************************************************************************|
|                              "ATAJOS DE TECLADO"                               |
|********************************************************************************/



/* -------------------------- DISTANCIA DE VISIÓN -------------------------- */

[
	["FCLA", "• General"], "FCLA_Open_VD_Dialog_Key",
	["Abrir configuración de distancia de visión"],
	{
		if !(alive player) exitWith {};
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
		_isWeaponDeployed = isWeaponDeployed _unit;
		_isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
		_isNotTouchingGround = !isTouchingGround _unit;
		_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
		if ((!FCLA_Kick_Door_Allowed) || (_isWeaponDeployed) || (_isPlayingAnimation) || (_isNotTouchingGround) || (_generalCheck)) exitWith {};

		[_unit] spawn FCLA_Immersions_fnc_initKickDoor;
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
		_unit = call CBA_fnc_currentUnit;
		_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _unit;
		if ((_generalCheck) || (_isNotTouchingGround)) exitWith {};

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
		_unit = call CBA_fnc_currentUnit;
		_randomSound = selectRandom ["FCLA_Hiss_1", "FCLA_Hiss_2"]
		_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _unit;
		if ((_generalCheck) || (_isNotTouchingGround)) exitWith {};

		[_unit, _randomSound, 1, false] spawn FCLA_Common_fnc_globalSay3D;
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
		_isProne = stance _unit == "PRONE";
		_isWeaponDeployed = isWeaponDeployed _unit;
		_isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
		_notUsingPrimaryWeapon = currentWeapon _unit != primaryWeapon _unit;
		_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _unit;
		if ((_isProne) || (_isWeaponDeployed) || (_isPlayingAnimation) || (_notUsingPrimaryWeapon) || (_generalCheck) || (_isNotTouchingGround)) exitWith {};

		_inTacticalPosition = _unit getVariable ["FCLA_inTactical_Position", false];
		if (!_inTacticalPosition) then {
			_unit setVariable ["FCLA_inTactical_Position", true, true];
			[_unit, "FCLA_Animation_Tactical_Position_Up", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;

			[{
				(_this select 0) params [["_unit", call CBA_fnc_currentUnit]];
				_isProne = stance _unit == "PRONE";
				_isWeaponDeployed = isWeaponDeployed _unit;
				_isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
				_notUsingPrimaryWeapon = currentWeapon _unit != primaryWeapon _unit;
				_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
				_isNotTouchingGround = !isTouchingGround _unit;
				(isNil {_unit getVariable "FCLA_inTactical_Position"}) || (_isProne) || (_isWeaponDeployed) || (_isPlayingAnimation) || (_notUsingPrimaryWeapon) || (_generalCheck) || (_isNotTouchingGround);
			}, {
				(_this select 0) params [["_unit", call CBA_fnc_currentUnit]];
				if (isNil {_unit getVariable "FCLA_inTactical_Position"}) exitWith {};
				if (alive _unit) then {[_unit, "FCLA_Animation_tacticalPosition_End", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;};
				_unit setVariable ["FCLA_inTactical_Position", nil, true];
			}, [_unit]] call CBA_fnc_waitUntilAndExecute;
		} else {
			_unit setVariable ["FCLA_inTactical_Position", nil, true];
			[_unit, "FCLA_Animation_tacticalPosition_End", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
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
		_isProne = stance _unit == "PRONE";
		_isWeaponDeployed = isWeaponDeployed _unit;
		_isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
		_notUsingPrimaryWeapon = currentWeapon _unit != primaryWeapon _unit;
		_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _unit;
		if ((_isProne) || (_isWeaponDeployed) || (_isPlayingAnimation) || (_notUsingPrimaryWeapon) || (_generalCheck) || (_isNotTouchingGround)) exitWith {};

		_inTacticalPosition = _unit getVariable ["FCLA_inTactical_Position", false];
		if (!_inTacticalPosition) then {
			_unit setVariable ["FCLA_inTactical_Position", true, true];
			[_unit, "FCLA_Animation_Tactical_Position_Down", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;

			[{
				(_this select 0) params [["_unit", call CBA_fnc_currentUnit]];
				_isProne = stance _unit == "PRONE";
				_isWeaponDeployed = isWeaponDeployed _unit;
				_isPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
				_notUsingPrimaryWeapon = currentWeapon _unit != primaryWeapon _unit;
				_generalCheck = [_unit] call FCLA_Common_fnc_severalConditions;
				_isNotTouchingGround = !isTouchingGround _unit;
				(isNil {_unit getVariable "FCLA_inTactical_Position"}) || (_isProne) || (_isWeaponDeployed) || (_isPlayingAnimation) || (_notUsingPrimaryWeapon) || (_generalCheck) || (_isNotTouchingGround);
			}, {
				(_this select 0) params [["_unit", call CBA_fnc_currentUnit]];
				if (isNil {_unit getVariable "FCLA_inTactical_Position"}) exitWith {};
				if (alive _unit) then {[_unit, "FCLA_Animation_tacticalPosition_End", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;};
				_unit setVariable ["FCLA_inTactical_Position", nil, true];
			}, [_unit]] call CBA_fnc_waitUntilAndExecute;
		} else {
			_unit setVariable ["FCLA_inTactical_Position", nil, true];
			[_unit, "FCLA_Animation_tacticalPosition_End", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;
		};
	},
	{},
  [DIK_A, [true, false, true]],
	false,
	0,
	false
] call CBA_fnc_addKeybind;
