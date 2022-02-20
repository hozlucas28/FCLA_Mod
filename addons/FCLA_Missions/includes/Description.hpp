
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

#include "\FCLA_Missions\includes\defines.hpp"



/* ------------------------- NOMBRE DEL ESCENARIO -------------------------- */

OnLoadName = SCENARIO_NAME;
briefingName = SCENARIO_NAME;



/* ----------------------------- EQUIPAMIENTO ------------------------------ */

allowSubordinatesTakeWeapons = 1;



/* -------------------------------- RESPAWN -------------------------------- */

respawn = 3;
reviveDelay = 120;
respawnOnStart = -1;



/* ------------------------------- SEGURIDAD ------------------------------- */

allowFunctionsLog = 0;
allowFunctionsRecompile = 1;

enableDebugConsole[] = {
  "76561198304995327", //Ghostkiller.
  "76561198137876583", //hozlucas28.
  "76561198260536786", //Mario.
  "76561198059595506", //Naretick.
  "76561198173170422", //Sagara.
  "76561198178496662", //Byron.
  "76561198010584812", //Kovalsky.
  "76561197982853635", //Legion.
  "76561198153898683" //Lorflord.
};



/* ------------------------------ MISCELANEOS ------------------------------ */

saving = 0;
debriefing = 1;
disabledAI = 1;
scriptedPlayer = 1;
