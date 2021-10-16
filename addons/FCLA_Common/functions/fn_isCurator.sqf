
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_isCurator

Description:
    Verifica si la unidad tiene Zeus.

Arguments:
    _unit  - Unidad a verificar.

Return:
    Boolean (true/false).

Example:
    [player] call FCLA_Development_fnc_isCurator;

Public: [Yes]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", call CBA_fnc_currentUnit]];


!(isNull (getAssignedCuratorLogic _unit));
