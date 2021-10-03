
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_isAdmin

Description:
    Verifica si la unidad es un administrador.

Parameters:
    _isVotedAdmin  - ¿Verificar si es un administrador votado? Opcional.

Return:
    Boolean (true/false).

Examples:
    [] call FCLA_Development_fnc_isAdmin;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_isVotedAdmin", false]];
_currentAdminState = admin clientOwner;


switch (true) do {
	case ((_currentAdminState == 1) && (_isVotedAdmin)): {true};
	case (_currentAdminState == 2): {true};
	default {false};
};
