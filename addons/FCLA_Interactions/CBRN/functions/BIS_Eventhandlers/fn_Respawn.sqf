
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reinicia la variable de tipo objeto que tenia el cuerpo de la unidad,
 * cuando respawnea.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_corpse"];
_corpse setVariable ["FCLA_Contaminated_Areas", nil, true];
