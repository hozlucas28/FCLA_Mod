
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce la animacion de los palillos de luz.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player", "_animation"];



//Definir argumentos del subtitulo.
_line = switch (toUpper _animation) do {
	case "ACTS_JETSMARSHALLINGENGINESON_IN": {["[Sdo] Usted", "Enciende los motores!"];};
	case "ACTS_JETSMARSHALLINGENGINESOFF_IN": {["[Sdo] Usted", "Apaga los motores!"];};
  case "ACTS_JETSMARSHALLINGSTRAIGHT_IN": {["[Sdo] Usted", "Recto!"];};
  case "ACTS_JETSMARSHALLINGSLOW_IN": {["[Sdo] Usted", "Despacio!"];};
  case "ACTS_JETSMARSHALLINGRIGHT_IN": {["[Sdo] Usted", "Derecha!"];};
  case "ACTS_JETSMARSHALLINGLEFT_IN": {["[Sdo] Usted", "Izquieda!"];};
  case "ACTS_JETSMARSHALLINGSTOP_IN": {["[Sdo] Usted", "Alto!"];};
  case "ACTS_JETSMARSHALLINGEMERGENCYSTOP_IN": {["[Sdo] Usted", "Emergencia alto!"];};
	default {["", ""];};
};

_color = switch (side _player) do {
	case WEST: {"Side";};
	case EAST: {"Opfor";};
  case GUER: {"Independant";};
  case CIV: {"Civilian";};
	default {"";};
};
if (("" in _line) || (_color == "")) exitWith {};


//Mostrar subtitulo y reproducir animacion.
[_player, _animation, 'SwitchMove', true] spawn FCLA_Common_fnc_playAnimation;
["FCLA_Show_Subtitles", [_player, [_line], _color, 3], _player] call CBA_fnc_targetEvent;
