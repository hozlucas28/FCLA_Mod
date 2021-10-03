
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_setUnitACEName

Description:
    Cambia en nombre de la unidad, con efecto inmediato.

Parameters:
    _unit - Unidad a la que se le quiere cambiar el nombre.
    _newName - Nuevo nombre ó nombre y apellido a aplicar a la unidad.

Return:
    Boolean (true/false).

Examples:
    [player, "Soy yo"] call FCLA_Development_fnc_setUnitACEName;

Public: [SI]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params [["_unit", call CBA_fnc_currentUnit], ["_newName", ""]];

_unit setName _newName;
[_unit] call ACE_Common_fnc_setName;
