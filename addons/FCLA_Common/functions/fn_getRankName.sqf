
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna el rango que se encuentra en el nombre de la unidad.
 *
 * Argument:
 *            0: Unidad. <UNIT>
 *
 * Return Value:
 * Rango. <STRING>
 *
 * Example:
 * [player] call FCLA_Common_fnc_getRankName;
 *
 * Note:
 * El rango retornado es el que le corresponde dentro del juego. El mismo
 * es devuelto en mayúsculas.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_unit", objNull, [objNull, teamMemberNull], 0]];
if (isNull _unit) exitWith {""};



//Obtener rango.
_originalName = name player;
_originalRank = ([_originalName, _originalName find ["[", 0], _originalName find ["]", 0]] call CBA_fnc_substring) call CBA_fnc_removeWhitespace;
_originalRank = [_originalRank, "[", ""] call CBA_fnc_replace;
_originalRank = [_originalRank, "]", ""] call CBA_fnc_replace;


//Limpiar rango.
_rankCleaned = [_originalRank, "°", ""] call CBA_fnc_replace;
_rankCleaned = [_rankCleaned, "1", ""] call CBA_fnc_replace;
_rankCleaned = [_rankCleaned, "2", ""] call CBA_fnc_replace;
_rankCleaned = toUpper ([_rankCleaned, ".", ""] call CBA_fnc_replace);


//Retornar rango.
switch (true) do {
	case (_rankCleaned in ["RCT", "SDO"]): {"PRIVATE";};
  case (_rankCleaned in ["CBO"]): {"CORPORAL";};
  case (_rankCleaned in ["SGT", "SGTMYR"]): {"SERGEANT";};
  case (_rankCleaned in ["SUBTTE", "TTE"]): {"LIEUTENANT";};
  case (_rankCleaned in ["CAP."]): {"CAPTAIN";};
  case (_rankCleaned in ["MYR", "TTECNL"]): {"MAJOR";};
  case (_rankCleaned in ["CNL"]): {"COLONEL";};
	default {"";};
};
