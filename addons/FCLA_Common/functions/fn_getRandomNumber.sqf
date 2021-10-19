
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_getRandomNumber

Description:
    Retorna un número al azar comprendido entre el mínimo y máximo enviados
    como parámetros.

Arguments:
    _minimum - Número mínimo.
    _maximum - Número máximo.
    _returnAsString - ¿Retornar el número en formato string? Opcional.

Return Value:
    Número.

Example:
    [19, 65] call FCLA_Development_fnc_getRandomNumber;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_minimum", 0], ["_maximum", 0], ["_returnAsString", false]];
if ((_minimum > _maximum) || (_maximum < _minimum)) exitWith {
  if (_returnAsString) then {""} else {-1};
};


_Numbers = [];
for "_i" from _minimum to _maximum do {_Numbers pushBack _i;};format ["%1", _i];
_return = (_Numbers select (floor (random (count _Numbers))));
if (_returnAsString) then {[_return] call ACE_Common_fnc_numberToString} else {_return};
