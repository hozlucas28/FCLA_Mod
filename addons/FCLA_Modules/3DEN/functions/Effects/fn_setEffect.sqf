
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto seleccionado en la posición del módulo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};
if (((_mode != "init") && (_mode != "attributesChanged3DEN")) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_delayEffect = ceil (_module getVariable ["FCLA_Delay", 0]);
_selectedEffect = toUpper (_module getVariable ["FCLA_Effect", "sparks"]);
if ((_selectedEffect in ["SPARKS", "WIND_GUST"]) && (_delayEffect <= 0)) exitWith {["¡Error! El/Un módulo 'Generar efecto' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Generar efecto.
switch (_selectedEffect) do {
  case "SPARKS": {[_module, _delayEffect] spawn FCLA_Modules_fnc_spawnSparks3DEN;};
  case "WIND_GUST": {[_module, _delayEffect] spawn FCLA_Modules_fnc_spawnWindGust3DEN;};
  case "FIREFLIES": {[_module] spawn FCLA_Modules_fnc_spawnFireflies3DEN;};
};
