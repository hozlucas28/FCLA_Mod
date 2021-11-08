
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el número de matrícula del vehículo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_plateNumber = _target getVariable ["FCLA_Plate_Number", ""];



//Reproducir animación.
[_player, "Gear", "playActionNow"] call FCLA_Common_fnc_playAnimation;


//Mostrar matrícula.
switch (_plateNumber != "") do {
	case true: {
    [["Número de matrícula:", 1.25], [_plateNumber, 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
  };

	case false: {
    _target setVariable ["FCLA_Plate_Number", getPlateNumber _target, true];
    [["Número de matrícula:", 1.25], [getPlateNumber _target, 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;
  };
};
