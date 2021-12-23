
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Devuelve la cadena enviada en formato de código.
 *
 * Arguments:
 *            0: Cadena que se quiere convertir a código. <STRING>
 *
 * Return Value:
 * Código con el contenido de la cadena enviada. <CODE>
 *
 * Example:
 * ["hint 'hola';"] call FCLA_Common_fnc_stringToCode;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_string", "", [""], 0]];
compile _string;
