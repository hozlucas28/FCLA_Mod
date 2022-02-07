
/********************************************************************************|
|               CONTROLADORES DE EVENTOS (JUGADORES) - "INSIGNIAS"               |
|********************************************************************************/

//Le coloca la insignia al jugador.
if (hasInterface) then {
  ["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    _savedInsignia = _unit getVariable ["FCLA_Insignia", FCLA_Default_Insignia];
    _insignia = if (isNil "_savedInsignia") then {"FCLA_Unassigned";} else {_savedInsignia;};
    if (!([_unit, true] call ACE_common_fnc_isPlayer)) exitWith {};
    [_unit, _insignia] spawn FCLA_Interactions_fnc_statementInsignias;
  }, true] call CBA_fnc_addPlayerEventHandler;
};
