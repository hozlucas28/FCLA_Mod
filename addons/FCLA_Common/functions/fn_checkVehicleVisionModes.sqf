
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Verifica si el vehículo, enviado como argumento 0, cuenta con visión
 * nocturna/térmica en cualquiera de sus asientos (comandante, artillero, etc.).
 *
 * Arguments:
 *            0: Classname del vehículo a verificar. <STRING>
 *            1: ¿Excluir visión térmica?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Cuenta con visión nocturna/térmica? <BOOL>
 *
 * Note:
 * Funciona con los coches, los vehículos de personal y las torretas (no VANTs).
 *
 * Examples:
 *             //Visión térmica incluida.
 *             ["B_MRAP_01_hmg_F"] call FCLA_Common_fnc_checkVehicleVisionModes;
 *
 *             //Visión térmica excluida.
 *             ["B_MRAP_01_hmg_F", true] call FCLA_Common_fnc_checkVehicleVisionModes;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_vehicle", "", [""], 0],
        ["_excludeTi", false, [true], 0]
       ];
if (!(isClass (configFile >> "CfgVehicles" >> _vehicle))) exitWith {false};



//Verificar si tiene visión nocturna/térmica.
_turrets = (configFile >> "CfgVehicles" >> _vehicle >> "Turrets") call BIS_fnc_getCfgSubClasses;
{
  _haveNightVision = ("NVG" in (getArray (configFile >> "CfgVehicles" >> _vehicle >> "Turrets" >> _x >> "OpticsIn" >> "ViewOptics" >> "visionMode")));
  _haveTermicVision = ("Ti" in (getArray (configFile >> "CfgVehicles" >> _vehicle >> "Turrets" >> _x >> "OpticsIn" >> "ViewOptics" >> "visionMode"))) || ((getArray (configFile >> "CfgVehicles" >> _vehicle >> "Turrets" >> _x >> "ViewOptics" >> "visionMode")) isNotEqualTo []);
  (_haveNightVision) || ((!_excludeTi) && (_haveTermicVision));
} count _turrets >= 1;
