
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Consumir la batería de las gafas de visión nocturna.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
_unit setVariable ["FCLA_Consume_NVG_Battery", true, true];



[{
  _args params ["_unit", "_lastTimeUpdated"];
  if ([_unit] call FCLA_Interactions_fnc_conditionToStopConsumeNVB) exitWith {
    setAperture 0;
    "FCLA_NVG_Battery_Overlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, false];
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  _battery = _unit getVariable ["FCLA_NVG_Battery", FCLA_NVG_Initial_Battery];
  _batteryLifeTime = FCLA_NVG_Battery_Life_Time * 60;
  switch (true) do {
    case ((_battery <= 100) && (_battery >= 80)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_100", "PLAIN", -1, false];};
    case ((_battery <= 80) && (_battery >= 60)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_80", "PLAIN", -1, false];};
    case ((_battery <= 60) && (_battery >= 40)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_60", "PLAIN", -1, false];};
    case ((_battery <= 40) && (_battery >= 20)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_40", "PLAIN", -1, false];};
    case ((_battery <= 20) && (_battery > 0)): {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_20", "PLAIN", -1, false];};
    default {"FCLA_NVG_Battery_Overlay" cutRsc ["FCLA_NVG_Battery_0", "PLAIN", -1, true]; setAperture 1000000;};
  };
}, 0.1, [_unit, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;





////////////////////////////// PORTAPAPELES ////////////////////////////// PROBAR CON MÁS TIEMPOS 

FCLA_NVG_Battery_Life_Time = 0.6/1;
//Comenzar consumo oxígeno.
[{
  _args params ["_unit", "_lastTimeUpdated"];

  _delta = (CBA_missionTime - _lastTimeUpdated) / FCLA_NVG_Battery_Life_Time;
  _NVGBattery = _unit getVariable ["FCLA_NVG_Battery", 100];
  _remainingBattery = (_NVGBattery - _delta) max 0;
  _unit setVariable ["FCLA_NVG_Battery", _remainingBattery];

  hint str _remainingBattery;

  (_this select 0) set [1, CBA_missionTime];
}, 0.1, [player, CBA_missionTime]] call CBA_fnc_addPerFrameHandler;


//ACTUALIZA LOADOUT AL CAMBIAR A MODO ESPECTADOR? POR LA CONDICION
//Condicional INCURATOR AL CUMPLIRSE Y DESACTIVARSE EL PERFRAMEHANDLER... CREAR FORMA PARA QUE CHEQUEE DEVUELVTA SI DEBE SEGUIR CONSUMIENDO.
