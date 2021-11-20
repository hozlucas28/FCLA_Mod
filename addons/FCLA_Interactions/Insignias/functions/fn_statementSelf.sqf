
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la insignia que selecciono el jugador.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_insignia"];
if (_unit getVariable ['FCLA_Disable_Insignias', false]) exitWith {};



//Colocar insignia.
_unit setVariable ["BIS_fnc_setUnitInsignia_class", nil, true];
[_unit, _insignia] spawn FCLA_Interactions_fnc_setVestInsignias;
[_unit, _insignia] spawn FCLA_Interactions_fnc_setUniformInsignias;
[_unit, _insignia] spawn FCLA_Interactions_fnc_setHeadgearInsignias;
[_unit, _insignia] spawn FCLA_Interactions_fnc_setBackpackInsignias;
if (!([_unit] call FCLA_Common_fnc_isCurator)) then {
  [_unit, _insignia] call BIS_fnc_setUnitInsignia;
} else {
  [_unit, "Curator"] call BIS_fnc_setUnitInsignia;
};


//Guardar insignia.
_savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Patche];
if (_savedInsignia == _insignia) exitWith {};
_unit setVariable ["FCLA_Insignia", _insignia, true];
