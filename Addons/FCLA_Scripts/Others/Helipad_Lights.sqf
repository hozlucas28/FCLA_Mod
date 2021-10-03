
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Scripts\Others\Helipad_Lights.sqf"

Description:
    Spawnea la cantidad enviada de luces, del color elegido, en el helipuerto enviado.
    Este debe ser un helipuerto con forma redondeada.

Parameters:
    _helipad - variable del helipuerto.
		_numberOfLights - número de luces a colocar, evite exagerar la cantidad.
		_coloredLights -  color de las luces, valores posibles: "Red", "Green" ó "Yellow". Con las comillas.

Example:
    //Colocar este código en el 'inic.' de un helipuerto redondo.
    null = [this, 8, "Yellow"] execVM "\FCLA_Scripts\Others\Helipad_Lights.sqf";

Tips:
		# Evita exagerar el número de luces a colocar ('_numberOfLights'), recuerda que puedes
      afectar negativamente el rendimiento.

Public: [Si]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_helipad", "_numberOfLights", "_coloredLights"];
if (!(isServer)) exitWith {};



//Variables locales.
_helipadPos = getPos _helipad;
_spaceBetweenLights	= 360/_numberOfLights;
_typeOfLight = switch (_coloredLights) do {
    case "Red": {"Land_Flush_Light_red_F"};
    case "Green": {"Land_Flush_Light_green_F"};
    case "Yellow": {"Land_Flush_Light_yellow_F"};
    default {"Land_Flush_Light_yellow_F"};
};

_helipad enableSimulationGlobal false;
for "_helipadCircle" from 1 to 360 step _spaceBetweenLights do {
  _helipadX = (_helipadPos select 0) + (sin (_helipadCircle)*5.75);
  _helipadY = (_helipadPos select 1) + (cos (_helipadCircle)*5.75);
  _helipadLightPos = [_helipadX, _helipadY, _helipadPos select 2];
  _light = createVehicle [_typeOfLight, _helipadLightPos, [], 0, "CAN_COLLIDE"];
  _light modelToWorld _helipadLightPos;
  _light enableSimulationGlobal false;
};
