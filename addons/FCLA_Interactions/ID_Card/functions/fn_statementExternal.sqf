
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
playsound "FCLA_Show_ID_Card";
createDialog "FCLA_ID_Card_Dialog";
[_player, "putDown", "playActionNow"] call FCLA_Common_fnc_playAnimation;
[{[_this, "Gear", "playActionNow"] call FCLA_Common_fnc_playAnimation;}, _player, 2] call CBA_fnc_waitAndExecute;


//Asignar información.
switch ("" in _IDCard) do {
	case true: {
		_originalName = name _target;
		_rank = [_originalName, _originalName find ["[", 0], _originalName find ["]", 0]] call CBA_fnc_substring;
		_nameWithoutRank = [_originalName, _rank, ""] call CBA_fnc_replace;
		_cleanName = [_nameWithoutRank] call CBA_fnc_leftTrim;
    _randomAge = [19, 65, true] call FCLA_Common_fnc_getRandomNumber;
    _randomPlaceOfBirth = call FCLA_Common_fnc_getRandomLocation;

		ctrlSetText [1007, _cleanName];
		ctrlSetText [1008, _randomAge];
		ctrlSetText [1009, _randomPlaceOfBirth];
    _target setVariable ["FCLA_ID", [_cleanName, _randomAge, _randomPlaceOfBirth], true];
	};

	case false: {
		ctrlSetText [1007, select 0];
		ctrlSetText [1008, select 1];
		ctrlSetText [1009, select 2];
	};
};


//Mostrar características.
[_target] spawn FCLA_Interactions_fnc_showTraitsID;


//Forzar cierre.
[{(!FCLA_ID_Card_Allowed) || (isNull findDisplay 10001) || ([_this select 0, _this select 1] call FCLA_Interactions_fnc_conditionExternalID)}, {
	if (!isNull findDisplay 10001) then {closeDialog 0;};
  [_this select 1, "", "SwitchMove"] call FCLA_Common_fnc_playAnimation;
}, [_target, _player]] call CBA_fnc_waitUntilAndExecute;
