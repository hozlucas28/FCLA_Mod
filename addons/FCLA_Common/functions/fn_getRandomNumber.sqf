
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna un número al azar comprendido entre un intervalo.
 *
 * Arguments:
 *            0: Número mínimo (entero). <NUMBER>
 *            1: Número máximo (entero). <NUMBER>
 *            2: ¿Retornar el número como un "STRING"?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * Número al azar comprendido entre el mínimo y el máximo. <NUMBER|STRING>
 *
 * Examples:
 * [0, 10] call FCLA_Common_fnc_getRandomNumber; //Retornar número como <NUMBER>.
 * [0, 10, true] call FCLA_Common_fnc_getRandomNumber; //Retornar número como <STRING>.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_minimum", 0, [0], 0],
        ["_maximum", 0, [0], 0],
        ["_returnAsString", false, [true], 0]
       ];



//Definir intervalo.
_array = [];
for "_i" from (round _minimum) to (round _maximum) do {_array pushBack _i;};


//Seleccionar número al azar.
_return = (_array select (round (random (count _array))));
switch (_returnAsString) do {
	case true: {[_return] call ACE_Common_fnc_numberToString};
	case false: {_return};
};
