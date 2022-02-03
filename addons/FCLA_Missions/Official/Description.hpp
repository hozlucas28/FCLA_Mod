
/********************************************************************************|
|                             CONFIGURACION GENERAL                              |
|********************************************************************************/

#include "\FCLA_Missions\Official\defines.hpp"



/* ---------------------------------- HUD ---------------------------------- */

showGPS = 1;
showMap = 1;
showWatch = 1;
showCompass = 1;
showUAVFeed = 0;
showSquadRadar = 0;
showGroupIndicator = 0;
showHUD[] = {1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0};



/* ----------------------------- EQUIPAMIENTO ------------------------------ */

allowProfileGlasses = ALLOW_PROFILE_GLASSES;
allowSubordinatesTakeWeapons = 1;
arsenalRestrictedItems[] = {};



/* -------------------------------- TAREAS --------------------------------- */

taskManagement_drawDist = 2000;
taskManagement_markers2D = 0;
taskManagement_markers3D = 0;
taskManagement_propagate = 1;



/* -------------------------------- RESPAWN -------------------------------- */

respawn = 5; //3 REVISAR
respawn = "BASE";
reviveMode = 0;
reviveDelay = 30;
respawnDelay = RESPAWN_DELAY;
respawnButton = 0;
respawnDialog = 0;
respawnOnStart = -1;
enableTeamSwitch = 1; //REVISAR
reviveRequiredTrait = 0;
respawnVehicleDelay = 60;
reviveRequiredItems = 0;
reviveBleedOutDelay = 300;
enablePlayerAddRespawn = 0;
reviveForceRespawnDelay = 5;
reviveMedicSpeedMultiplier = 2;
reviveUnconsciousStateMode = 0;
reviveRequiredItemsFakConsumed = 0;
respawnWeapons[] = {};
respawnTemplates[] = {};
respawnMagazines[] = {};



/* ------------------------ SEGURIDAD DEL SERVIDOR ------------------------- */

allowFunctionsLog = 0;
allowFunctionsRecompile = 1;
zeusCompositionScriptLevel = 2;



/* ------------------------------ MISCELÁNEOS ------------------------------ */

saving = 0;
skipLobby = 0;
debriefing = 1;
disabledAI = 1;
scriptedPlayer = 1;
HostDoesNotSkipLobby = 1;
forceRotorLibSimulation = FORCE_ROTOR_LIB_SIMULATION;
enableDebugConsole[] = {"76561198XXXXXXXXX","76561198YYYYYYYYY"};
