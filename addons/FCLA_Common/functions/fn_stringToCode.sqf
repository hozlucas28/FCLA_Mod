
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Devuelve la cadena enviada en formato de codigo.
 *
 * Arguments:
 *            0: Cadena que se quiere convertir a codigo. <STRING>
 *
 * Return Value:
 * Codigo con el contenido de la cadena enviada. <CODE>
 *
 * Example:
 * ["hint 'hola';"] call FCLA_Common_fnc_stringToCode;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_string", "", [""], 0]];
compile _string;
