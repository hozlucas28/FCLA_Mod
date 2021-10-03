
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_doorState

Description:
    Comprueba si el objeto enviado como parametro es una puerta ó no.

Parameters:
    _object - objeto que se obtuvo a partir del "cursorTarget" en la llamada a la
		          función.

Returns:
    Devuelve el classname de la puerta, su animación, cuanto esta abierta
		y si esta cerrada.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_object"];



if !(_object isKindof "house" || _object isKindof "wall") exitWith {["","",0,false]};

//Variables locales.
_doorTypes	= ["door", "hatch"];
_optionalDoors = [_object, "GEOM"] intersect [asltoatl (eyepos player),(player modelToworld [0, 3, 0])];
_door = "";

{
	_typeOfSelected = _x select 0;
	{
		if ([_x, _typeOfSelected] call BIS_fnc_inString) exitWith {_door = _typeOfSelected};
	} foreach _doorTypes;
} forEach _optionalDoors;

//Si no se ha encontrado una puerta valida.
if (_door == "") exitWith {["","",0,false]};

_animation = _door + "_rot";
_phase = if ((_object animationPhase _animation) > 0) then {0} else {1};
_closed = _phase == 1;

//Return.
[_door, _animation, _phase, _closed]
