
/********************************************************************************|
|                   CONTROLADORES DE EVENTOS (CLASES) - "NVG"                    |
|********************************************************************************/

if (isServer) then {
  ["CAManBase", "Respawn", {_this spawn FCLA_Effects_fnc_respawnNVG;}, true, [], true] call CBA_fnc_addClassEventHandler;
};
