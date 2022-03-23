
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
[_unit, _insignia] call FCLA_Interactions_fnc_setVestInsignias;
[_unit, _insignia] call FCLA_Interactions_fnc_setUniformInsignias;
[_unit, _insignia] call FCLA_Interactions_fnc_setHeadgearInsignias;
[_unit, _insignia] call FCLA_Interactions_fnc_setBackpackInsignias;

[{
  if ([_this select 0] call FCLA_Common_fnc_isCurator) exitWith {[_this select 0, "Curator"] call BIS_fnc_setUnitInsignia;};
  [_this select 0, _this select 1] call BIS_fnc_setUnitInsignia;
}, [_unit, _insignia], 0.2] call CBA_fnc_waitAndExecute;



//Guardar insignia.
_savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Insignia];
if (_savedInsignia == _insignia) exitWith {};
_unit setVariable ["FCLA_Insignia", _insignia, true];
