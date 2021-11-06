
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la insignia a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", ["_insignia", (_this select 0) getVariable ["FCLA_Insignia", FCLA_Default_Patche], [""], 0]];



//Colocar insignia.
_unit setVariable ["BIS_fnc_setUnitInsignia_class", nil];
[_unit, _insignia] spawn FCLA_Interactions_fnc_setVestInsignias;
[_unit, _insignia] spawn FCLA_Interactions_fnc_setUniformInsignias;
[_unit, _insignia] spawn FCLA_Interactions_fnc_setHeadgearInsignias;
[_unit, _insignia] spawn FCLA_Interactions_fnc_setBackpackInsignias;
[_unit, _insignia] call BIS_fnc_setUnitInsignia;


//Guardar insignia.
_savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Patche];
if (_savedInsignia == _insignia) exitWith {}
_unit setVariable ["FCLA_Insignia", _insignia, true];
