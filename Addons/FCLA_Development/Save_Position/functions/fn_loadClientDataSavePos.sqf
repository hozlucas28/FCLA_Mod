
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Equipa, teletransporta y gira al jugador según los argumentos enviados.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_loadout", "_positionASL", "_dir"];

player setUnitLoadout _loadout;
player setPosASL _positionASL;
player setDir _dir;
