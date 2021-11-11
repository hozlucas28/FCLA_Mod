
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce la animación de los palillos de luz.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player", "_animation"];



//Definir argumentos del subtítulo.
_line = switch (_animation) do {
	case "Acts_JetsMarshallingEnginesOn_in": {["[Sdo] Usted", "Enciende los motores!"];};
	case "Acts_JetsMarshallingEnginesOff_in": {["[Sdo] Usted", "Apaga los motores!"];};
  case "Acts_JetsMarshallingStraight_in": {["[Sdo] Usted", "Recto!"];};
  case "Acts_JetsMarshallingSlow_in": {["[Sdo] Usted", "Despacio!"];};
  case "Acts_JetsMarshallingRight_in": {["[Sdo] Usted", "Derecha!"];};
  case "Acts_JetsMarshallingLeft_in": {["[Sdo] Usted", "Izquieda!"];};
  case "Acts_JetsMarshallingStop_in": {["[Sdo] Usted", "Alto!"];};
  case "Acts_JetsMarshallingEmergencyStop_in": {["[Sdo] Usted", "Emergencia alto!"];};
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


//Mostrar subtítulo y reproducir animación.
[_player] call FCLA_Common_fnc_hideSubtitles;
[_player, [_line], _color, 3] call FCLA_Common_fnc_showSubtitles;
[_player, _animation, 'SwitchMove', true] spawn FCLA_Common_fnc_playAnimation;
