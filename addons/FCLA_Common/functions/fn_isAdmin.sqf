
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el cliente, del entorno de ejecución, es un administrador.
 *
 * Return Value:
 * ¿Es un administrador? <BOOL>
 *
 * Example:
 * call FCLA_Common_fnc_isAdmin;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

switch (admin clientOwner) do {
	case 2: {true};
	default {false};
};
