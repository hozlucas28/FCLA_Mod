
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Equipa, teletransporta y gira al jugador según los argumentos enviados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_loadout", "_lastVehicle", "_lastPosition", "_lastDirection"];


player setPos _lastPosition;
player setDir _lastDirection;
player moveInCargo _lastVehicle;
player setUnitLoadout _loadout;
