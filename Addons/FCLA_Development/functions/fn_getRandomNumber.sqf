
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getRandomNumber

Description:
    Retorna un número al azar comprendido entre el mínimo y máximo enviados
    como parámetros.

Parameters:
    _minimum - Número mínimo.
    _maximum - Número máximo.
    _returnAsString - ¿Retornar el número en formato string? Opcional.

Returns:
    Número.

Examples:
    [19, 65] call FCLA_Development_fnc_getRandomNumber;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_minimum", 0], ["_maximum", 0], ["_returnAsString", false]];
if ((_minimum > _maximum) || (_maximum < _minimum)) exitWith {
  if (_returnAsString) then {""} else {-1};
};


_arrayOfNumbers = [];
for "_i" from _minimum to _maximum do {_arrayOfNumbers pushBack _i;};format ["%1", _i];
_return = (_arrayOfNumbers select (floor (random (count _arrayOfNumbers))));
if (_returnAsString) then {[_return] call ACE_Common_fnc_numberToString} else {_return};
