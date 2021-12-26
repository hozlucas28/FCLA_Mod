
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reinicia la variable de tipo objeto de la unidad, cuando muere.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!(missionNamespace getVariable ["FCLA_CBRN", false])) exitWith {};


_unit setVariable ["FCLA_Contaminated_Areas", nil, true];
