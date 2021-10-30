
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Oculta todas las entidades que fueron colocadas con el Eden editor, menos a
 * los jugadores, que se encuentran dentro del radio enviado como argumento 1.
 *
 * Arguments:
 *            0: Centro del radio de búsqueda. <POSITION|UNIT|OBJECT|VEHICLE|GROUP|MARKER|LOCATION>
 *            1: Radio de búsqueda. <NUMBER>
 *            2: ¿Excluir IA?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Note:
 * Si se quiere excluir una entidad específica asignale la variable de tipo
 * objeto "FCLA_Exclude_Concealment" con el valor <true>.
 *
 * Examples:
 * [player, 150] call FCLA_Common_fnc_hideEdenEntities; //IA no excluida.
 * [getPos player, 150, true] call FCLA_Common_fnc_hideEdenEntities; //IA excluida.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_center", objNull, [], [0, 1, 2, 3]],
        ["_rad", 0, [0], 0],
        ["_excludeAI", false, [true], 0]
       ];
if (_rad <= 0) exitWith {false};



//Determina las entidades a ocultar.
_centerPos = [_center] call CBA_fnc_getPos;
_nearEntities = ((nearestObjects [_centerPos, [], _rad, true]) - (nearestTerrainObjects [_centerPos, [], _rad, true, true])) - allPlayers;
_entitiesToHide = switch (_excludeAI) do {
	case true: {_nearEntities - allUnits;};
	case false: {_nearEntities;};
};


//Oculta las entidades.
{
  _hideUnit = (!_excludeAI) || ((count (fullCrew _x)) <= 0);
  _isNotExcluded = !(_x getVariable ["FCLA_Exclude_Concealment", false]);

	if ((_hideUnit) && (_isNotExcluded)) then {
    [_x, []] call ACE_Common_fnc_hideUnit;
  	_x setVariable ["FCLA_Hidden", true, true];
  };
} forEach _entitiesToHide;
true
