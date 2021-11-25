
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra la identificación de la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_IDCard = _target getVariable ["FCLA_ID", ["", -1, ""]];



//Mostrar identificación.
playsound "FCLA_Show_ID";
createDialog "FCLA_ID_Card_Dialog";
[_player, "Gear", "playActionNow"] call FCLA_Common_fnc_playAnimation;


//Asignar información.
switch ("" in _IDCard) do {
	case true: {
		_name = [_target] call FCLA_Common_fnc_getCleanName;
    _randomAge = [19, 65, true] call FCLA_Common_fnc_getRandomNumber;
    _randomPlaceOfBirth = [false, false, false] call FCLA_Common_fnc_getRandomLocation;

		ctrlSetText [1007, _name];
		ctrlSetText [1008, _randomAge];
		if (_randomPlaceOfBirth != "") then {ctrlSetText [1009, _randomPlaceOfBirth];};
    _target setVariable ["FCLA_ID", [_name, _randomAge, _randomPlaceOfBirth], true];
	};

	case false: {
		ctrlSetText [1007, _IDCard select 0];
		ctrlSetText [1008, _IDCard select 1];
		ctrlSetText [1009, _IDCard select 2];
	};
};


//Mostrar características.
[_target] spawn FCLA_Interactions_fnc_showTraitsID;


//Forzar cierre.
[{
	params ["_target", "_player"];
	_isDragging = _player getVariable ["ACE_Dragging_isDragging", false];
	_isCarrying = _player getVariable ["ACE_Dragging_isCarrying", false];
	_isNotAlive = !alive _player;
	_areSwimming = ([_target] call ACE_Common_fnc_isSwimming) || ([_player] call ACE_Common_fnc_isSwimming);
	_isSurrendering = _player getVariable ["ACE_Captives_isSurrendering", false];
	_areNotFriendly = !([side _target, side _player] call BIS_fnc_sideIsFriendly);
	_isNotHandcuffed = !(_target getVariable ["ACE_Captives_isHandcuffed", false]);
	_isNotTouchingGround = !(isTouchingGround _player);
	_isNotTargetSurrendering = !(_target getVariable ["ACE_Captives_isSurrendering", false]);
	(isNull findDisplay 10001) || (!FCLA_ID_Card_Allowed) || ((_areNotFriendly) && (_isNotHandcuffed) && (_isNotTargetSurrendering)) || (_isDragging) || (_isCarrying) || (_isNotAlive) || (_areSwimming) || (_isSurrendering) || (_isNotTouchingGround);
}, {
	if (!isNull findDisplay 10001) then {closeDialog 0;};
  [_this select 1, "", "SwitchMove"] call FCLA_Common_fnc_playAnimation;
}, [_target, _player]] call CBA_fnc_waitUntilAndExecute;
