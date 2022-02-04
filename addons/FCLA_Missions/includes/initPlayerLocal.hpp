
/********************************************************************************|
|                             INICIALIZACIÓN - LOCAL                             |
|********************************************************************************/

params ["_player", "_didJIP"];
#include "\FCLA_Missions\includes\defines.hpp"



/* --------------------------------- VIDAS --------------------------------- */

if (!HAS_UNLIMITED_LIVES) then {
  switch (str (side _player)) do {
    case "OPFOR": {[_player, NUMBER_OF_OPFOR_LIVES] call BIS_fnc_respawnTickets;};
  	case "BLUFOR": {[_player, NUMBER_OF_BLUFOR_LIVES] call BIS_fnc_respawnTickets;};
    case "CIVILIAN": {[_player, NUMBER_OF_CIVILIAN_LIVES] call BIS_fnc_respawnTickets;};
  	case "INDEPENDANT": {[_player, NUMBER_OF_INDEPENDANT_LIVES] call BIS_fnc_respawnTickets;};
  	default {[_player, NUMBER_OF_BLUFOR_LIVES] call BIS_fnc_respawnTickets;};
  };
};
