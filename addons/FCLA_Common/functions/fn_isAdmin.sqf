
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el cliente, del entorno de ejecucion, es un administrador.
 *
 * Arguments:
 *            0: ¿Excluir administrador votado?, opcional. <BOOL> (default: true)
 *
 * Return Value:
 * ¿Es un administrador? <BOOL>
 *
 * Examples:
 *             //Administrador votado excluido.
 *             [] call FCLA_Common_fnc_isAdmin;
 *
 *             //Administrador votado no excluido.
 *             [false] call FCLA_Common_fnc_isAdmin;
 *
 * Note:
 * Si no te encuentras en un servidor dedicado se retornara un false.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_excludeVotedAdmin", true, [true], 0]];


_currentAdminState = admin clientOwner;
switch (true) do {
	case ((!_excludeVotedAdmin) && (_currentAdminState == 1)): {true};
	case (_currentAdminState == 2): {true};
	default {false};
};
