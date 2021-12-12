
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que los vehículos reciban un daño fatal, dejandolos con
 * un daño total sin provocar su destrucción.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", false, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_damageItemsState = _module getVariable ["FCLA_Damage_Items", false];
_damageWeaponsState = _module getVariable ["FCLA_Damage_Weapons", false];
_areNotCompatibleSynchronizedObjects = ({_x in vehicles} count _synchronizedObjects) <= 0;
if (ACE_Vehicle_Damage_Enabled) exitWith {["FCLA_Module_Advanced_Vehicle_Damage", "• MÓDULO: ASIGNAR DAV", "¡El addon option: Daño avanzado de vehículo (ACE), debe estar desactivado!"] spawn FCLA_Modules_fnc_reportError3DEN;};
if (_areNotCompatibleSynchronizedObjects) exitWith {};



//Evitar daño fatal al vehículo.
{
  if (!(_x in vehicles)) exitWith {};
  [_x, _damageWeaponsState, _damageItemsState] call FCLA_Common_fnc_setAdvancedVehicleDamage;
} forEach _synchronizedObjects;
