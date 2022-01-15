
/********************************************************************************|
|                              "ATAJOS DE TECLADO"                               |
|********************************************************************************/



/* ----------------------------- PATEAR PUERTA ----------------------------- */

[
	["FCLA", "• General"], "FCLA_Kick_Door_Key",
	["Patear puerta", "Preciona 'Tecla asignada' para abrir una puerta que este cerrada."],
	{
		_player = call CBA_fnc_currentUnit;
		_isNotStand = (stance _player) != "STAND";
		_severalConditions = [_player] call FCLA_Common_fnc_severalConditions;
		_isPlayingAnimation = _player getVariable ["FCLA_Playing_Animation", false];
		_isNotTouchingGround = !isTouchingGround _player;
		if ((!FCLA_Kick_Door_Allowed) || (_isNotStand) || (_severalConditions) || (_isPlayingAnimation) || (_isNotTouchingGround)) exitWith {};
		_player spawn FCLA_Immersions_fnc_initKickDoor;
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
		_player = call CBA_fnc_currentUnit;
		_severalConditions = [_player, [6, 7, 12, 14, 16]] call FCLA_Common_fnc_severalConditions;
		if (_severalConditions) exitWith {};
		_randomSound = selectRandom ["FCLA_Hiss_1", "FCLA_Hiss_2"];
		[_player, _randomSound, nil, 150, false] call FCLA_Common_fnc_globalSay3D;
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
		_player = call CBA_fnc_currentUnit;
		_isProne = (stance _player) == "PRONE";
		_severalConditions = [_player] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _player;
		_hasNotWeaponOnHands = (currentWeapon _player) == "";
		_notUsingPrimaryWeapon = (currentWeapon _player) != (primaryWeapon _player);
		_tacticalPositionValues = _player getVariable ["FCLA_Tactical_Position", [false, false]];
		if ((_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_hasNotWeaponOnHands) || (_notUsingPrimaryWeapon)) exitWith {};


		if (!(_tacticalPositionValues select 0)) then {
			_player setVariable ["FCLA_Tactical_Position", [true, _tacticalPositionValues select 1], true];
			[_player, "FCLA_Tactical_Position_Up"] call ACE_Common_fnc_doGesture;

			[{
				_tacticalPositionValues = _this getVariable ["FCLA_Tactical_Position", [false, false]];
				_isProne = (stance _this) == "PRONE";
				_severalConditions = [_this] call FCLA_Common_fnc_severalConditions;
				_isNotTouchingGround = !isTouchingGround _this;
				_hasNotWeaponOnHands = (currentWeapon _this) == "";
				_notUsingPrimaryWeapon = (currentWeapon _this) != (primaryWeapon _this);
				_tacticaPositionFinished = !(_tacticalPositionValues select 0);
				(_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_hasNotWeaponOnHands) || (_notUsingPrimaryWeapon) || (_tacticaPositionFinished);
			}, {
				_tacticalPositionValues = _this getVariable ["FCLA_Tactical_Position", [false, false]];
				_this setVariable ["FCLA_Tactical_Position", [false, _tacticalPositionValues select 1], true];
        if (!(_tacticalPositionValues select 1)) then {[_this, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
			}, _player] call CBA_fnc_waitUntilAndExecute;
		} else {
			_player setVariable ["FCLA_Tactical_Position", [false, _tacticalPositionValues select 1], true];
			if (!(_tacticalPositionValues select 1)) then {[_player, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
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
		_player = call CBA_fnc_currentUnit;
		_isProne = (stance _player) == "PRONE";
		_severalConditions = [_player] call FCLA_Common_fnc_severalConditions;
		_isNotTouchingGround = !isTouchingGround _player;
		_hasNotWeaponOnHands = (currentWeapon _player) == "";
		_notUsingPrimaryWeapon = (currentWeapon _player) != (primaryWeapon _player);
		_tacticalPositionValues = _player getVariable ["FCLA_Tactical_Position", [false, false]];
		if ((_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_hasNotWeaponOnHands) || (_notUsingPrimaryWeapon)) exitWith {};


		if (!(_tacticalPositionValues select 0)) then {
			_player setVariable ["FCLA_Tactical_Position", [true, _tacticalPositionValues select 1], true];
			[_player, "FCLA_Tactical_Position_Down"] call ACE_Common_fnc_doGesture;

			[{
				_tacticalPositionValues = _this getVariable ["FCLA_Tactical_Position", [false, false]];
				_isProne = (stance _this) == "PRONE";
				_severalConditions = [_this] call FCLA_Common_fnc_severalConditions;
				_isNotTouchingGround = !isTouchingGround _this;
				_hasNotWeaponOnHands = (currentWeapon _this) == "";
				_notUsingPrimaryWeapon = (currentWeapon _this) != (primaryWeapon _this);
				_tacticaPositionFinished = !(_tacticalPositionValues select 0);
				(_isProne) || (_severalConditions) || (_isNotTouchingGround) || (_hasNotWeaponOnHands) || (_notUsingPrimaryWeapon) || (_tacticaPositionFinished);
			}, {
				_tacticalPositionValues = _this getVariable ["FCLA_Tactical_Position", [false, false]];
				_this setVariable ["FCLA_Tactical_Position", [false, _tacticalPositionValues select 1], true];
        if (!(_tacticalPositionValues select 1)) then {[_this, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
			}, _player] call CBA_fnc_waitUntilAndExecute;
		} else {
			_player setVariable ["FCLA_Tactical_Position", [false, _tacticalPositionValues select 1], true];
			if (!(_tacticalPositionValues select 1)) then {[_player, "FCLA_Tactical_Position_Stop", "playActionNow"] call FCLA_Common_fnc_playAnimation;};
		};
	},
	{},
  [DIK_A, [true, false, true]],
	false,
	0,
	false
] call CBA_fnc_addKeybind;
