
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Teletransporta a la posición ó vehículo, le asigna una dirección
 * y equipa a la unidad, según los argumentos enviados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

(this select 0) params ["_savedPosAndDir", "_savedLoadout", "_savedVehicle"];
(this select 1) params ["_savePosAndDirState", "_saveLoadoutState", "_saveVehicleState"];



if (_saveLoadoutState) then {player setUnitLoadout _savedLoadout;};
if (_savePosAndDirState) then {player setPos (_savedPosAndDir select 0);};
if (_savePosAndDirState) then {player setDir (_savedPosAndDir select 1);};
if (_saveVehicleState) then {[[player], _savedVehicle] call ZEN_Common_fnc_teleportIntoVehicle;};
