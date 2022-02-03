
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna un numero al azar comprendido entre un intervalo.
 *
 * Arguments:
 *            0: Numero minimo (entero). <NUMBER>
 *            1: Numero maximo (entero). <NUMBER>
 *            2: ¿Retornar el numero como un "STRING"?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * Numero al azar comprendido entre el minimo y el maximo. <NUMBER|STRING>
 *
 * Examples:
 *             //Retornar numero como <NUMBER>.
 *             [0, 10] call FCLA_Common_fnc_getRandomNumber;
 *
 *             //Retornar numero como <STRING>.
 *             [0, 10, true] call FCLA_Common_fnc_getRandomNumber;
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
for "_i" from (ceil _minimum) to (ceil _maximum) do {_array pushBack _i;};


//Seleccionar numero al azar.
_return = selectRandom _array;
switch (_returnAsString) do {
	case true: {[_return] call ACE_Common_fnc_numberToString};
	case false: {_return};
};
