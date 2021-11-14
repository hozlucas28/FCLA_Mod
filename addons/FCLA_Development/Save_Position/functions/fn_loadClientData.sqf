
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Equipa, teletransporta a un vehículo ó posición y gira al jugador,
 * según los argumentos enviados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_lastLoadout", "_lastVehicle", "_lastPosition", "_lastDirection"];



player setPos _lastPosition;
player setDir _lastDirection;
player setUnitLoadout _lastLoadout;
[[player], _lastVehicle] call ZEN_Common_fnc_teleportIntoVehicle;
