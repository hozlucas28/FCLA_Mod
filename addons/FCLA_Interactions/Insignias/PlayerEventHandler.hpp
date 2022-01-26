
/********************************************************************************|
|               CONTROLADORES DE EVENTOS (JUGADORES) - "INSIGNIAS"               |
|********************************************************************************/

//Le coloca la insignia al jugador.
if (hasInterface) then {
  ["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    if (!([_unit, true] call ACE_common_fnc_isPlayer)) exitWith {};
    _insignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Patche];
    [_unit, _insignia] spawn FCLA_Interactions_fnc_statementSelfInsignias;
  }, true] call CBA_fnc_addPlayerEventHandler;
};
