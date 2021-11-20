
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la insignia de curso, enviada como argumento 1, a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_insignia"];
if (_unit getVariable ['FCLA_Disable_Insignias', false]) exitWith {};



//Colocar insignia.
_unit setVariable ["BIS_fnc_setUnitInsignia_class", nil, true];
if (!([_unit] call FCLA_Common_fnc_isCurator)) then {
  [_unit, _insignia] call BIS_fnc_setUnitInsignia;
} else {
  [_unit, "Curator"] call BIS_fnc_setUnitInsignia;
};


//Guardar insignia.
_savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Patche];
if (_savedInsignia == _insignia) exitWith {};
_unit setVariable ["FCLA_Insignia", _insignia, true];
