
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_showIDCard

Description:
    Muestra la identificación de la unidad enviada.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit"];
_getIDCardInformation = _unit getVariable ["FCLA_ID_Card", [name _unit, -1, "(Sin completar)", false]];



//Mostrar imagen de la identificación.
playsound "FCLA_Show_ID_Card";
createDialog "FCLA_ID_Card_Dialog";


//Asignar texto de la identificación.
_infoChecked = _getIDCardInformation select 3;
switch (_infoChecked) do {
	case true: {
		_getName = _getIDCardInformation select 0;
		_getAge = _getIDCardInformation select 1;
		_getPlaceOfBirth = _getIDCardInformation select 2;
		ctrlSetText [1007, name _unit];
		ctrlSetText [1008, _randomAge];
		ctrlSetText [1009, _randomPlaceOfBirth];
	};

	case false: {
		_randomAge = [19, 65, true] call FCLA_Development_fnc_getRandomNumber;
		_randomPlaceOfBirth = call FCLA_Development_fnc_getNameOfRandomLocation;
		ctrlSetText [1007, name _unit];
		ctrlSetText [1008, _randomAge];
		ctrlSetText [1009, if (_randomPlaceOfBirth != "") then {_randomPlaceOfBirth} else {"(Sin completar)"}];
		_unit setVariable ["FCLA_ID_Card", [name _unit, _randomAge, _randomPlaceOfBirth, true], true];
	};
};


//Forzar cerrado.
[{
	_isOnMap = visibleMap;
  _inStairs = _this getVariable ["FCLA_inStairs", false];
	_isNotAlive = !(alive _this);
  _isSwimming = [_this] call ACE_Common_fnc_isSwimming;
  _inCameraMode = _this getVariable ["FCLA_Camera_Mode_On", false];
	_isNotShowingIDCard = isNull findDisplay 10001;
  (FCLA_ID_Card_Allowed) || (_isOnMap) || (_inStairs) || (_isNotAlive) || (_isSwimming) || (_inCameraMode) || (_isNotShowingIDCard);
}, {
	_isShowingIDCard = !isNull findDisplay 10001;
	if (_isShowingIDCard) then {closeDialog 1011;};
},_unit] call CBA_fnc_waitUntilAndExecute;
