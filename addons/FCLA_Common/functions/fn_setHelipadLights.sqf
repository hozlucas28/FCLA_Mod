
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca luces alrededor del helipuerto, enviado como argumento.
 *
 * Arguments:
 *            0: Helipuerto donde se colocaran las luces. <OBJECT>
 *            1: Número de luces a colocar, opcional. <NUMBER> (default: 10)
 *            2: Color de las luces, opcional. <STRING> (default: "Yellow")
 *                # Colores aceptados: "Yellow", "Red" y "Green".
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 * [Helipad_1] call FCLA_Common_fnc_setHelipadLights; //Opcionales no definidos.
 * [Helipad_2, 5, "Red"] call FCLA_Common_fnc_setHelipadLights; //Opcionales definidos.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_helipad", objNull, [objNull], 0],
        ["_numberOfLights", 10, [0], 0],
        ["_colorOfLights", "Yellow", [""], 0]
       ];



//Verificar argumentos.
_compatiblehelipads = ["Land_HelipadCircle_F", "Land_HelipadCivil_F", "Land_JumpTarget_F", "HeliH", "Heli_H_civil", "HeliHCivil", "PARACHUTE_TARGET"];
_compatibleColorOfLights = ["Yellow", "Red", "Green"];
if ((isNull _helipad) || !((typeOf _helipad) in _compatiblehelipads) || (_numberOfLights <= 0) || !(_colorOfLights in _compatibleColorOfLights)) exitWith {false};


//Definir variables locales.
_helipadPos = getPos _helipad;
_spaceBetweenLights	= 360/_numberOfLights;
_classnameOfLight = switch (Upper _colorOfLights) do {
  case "YELLOW": {"Land_Flush_Light_yellow_F"};
  case "RED": {"Land_Flush_Light_red_F"};
  case "GREEN": {"Land_Flush_Light_green_F"};
};


//Colocar luces.
for "_i" from 1 to 360 step _spaceBetweenLights do {
  _helipadX = (_helipadPos select 0) + (sin (_i) * 5.75);
  _helipadY = (_helipadPos select 1) + (cos (_i) * 5.75);
  _helipadLightPos = [_helipadX, _helipadY, _helipadPos select 2];
  _lightObj = createVehicle [_classnameOfLight, _helipadLightPos, [], 0, "CAN_COLLIDE"];
  _lightObj modelToWorld _helipadLightPos;
  _lightObj attachTo [_helipad];
};
true
