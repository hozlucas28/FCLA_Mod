
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce el sonido seleccionado de manera tridimensional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
(_this select 1) params [
                         ["_module", objNull, [objNull], 0],
                         ["_isActivated", true, [true], 0],
                         ["_isCuratorPlaced", false, [true], 0]
                        ];
if ((isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_sound = _module getVariable ["FCLA_Sound", ""];
_loopSound = _module getVariable ["FCLA_Sound_On_Loop", false];
_deleteSound = _module getVariable ["FCLA_Delete_Source", false];
if (_sound == "") exitWith {};



//Reproducir sonido.
switch (_this select 0) do {
	case "init": {};
	case "attributesChanged3DEN": {};
  default {};
};
