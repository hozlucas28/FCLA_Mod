
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra las entidades del Eden editor, que fueron ocultadas por
 * la función 'FCLA_Common_fnc_hideEdenEntities', dentro del radio
 * enviado como argumento 1.
 *
 * Arguments:
 *            0: Centro del radio de búsqueda. <POSITION|UNIT|OBJECT|VEHICLE|GROUP|MARKER|LOCATION>
 *            1: Radio de búsqueda. <NUMBER>
 *            2: ¿Excluir IA?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *             //IA no excluida.
 *             [player, 150] call FCLA_Common_fnc_showHiddenEdenEntities;
 *
 *             //IA excluida.
 *             [getPos player, 150, true] call FCLA_Common_fnc_showHiddenEdenEntities;
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



//Determina las entidades a mostrar.
_centerPos = [_center] call CBA_fnc_getPos;
_nearEntities = ((nearestObjects [_centerPos, [], _rad, true]) - (nearestTerrainObjects [_centerPos, [], _rad, true, true])) - allPlayers;
_entitiesToShow = switch (_excludeAI) do {
	case true: {_nearEntities - allUnits;};
	case false: {_nearEntities;};
};


//Muestra las entidades.
{
  _ShowUnit = (!_excludeAI) || ((count (fullCrew _x)) <= 0);
  _isHiddenEntity = _x getVariable ["FCLA_Hidden", false];

	if ((_ShowUnit) && (_isHiddenEntity)) then {
    [_x, []] call ace_common_fnc_unhideUnit;
  	_x setVariable ["FCLA_Hidden", nil, true];
  };
} forEach _entitiesToShow;
true
