
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_applyPatche

Description:
    Coloca el parche eviado a la unidad y lo guarda en una variable.

Arguments:
    _unit - unidad a la que se le colocara el parche.
    _patche - classname del parche a colocar.

Example:
		  [player, "Patch_Takana"] call FCLA_Interactions_fnc_applyPatche;

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit","_patche"];



//Colocar y guardar variable en la unidad.
[_unit, ""] call BIS_fnc_setUnitInsignia;
[_unit, _patche] call BIS_fnc_setUnitInsignia;
_unit setVariable ["Assigned_Patche", _patche, true];
true
