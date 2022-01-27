
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
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_damageItemsState = _module getVariable ["FCLA_Damage_Items", false];
_damageWeaponsState = _module getVariable ["FCLA_Damage_Weapons", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {_x in vehicles};
if (ACE_Vehicle_Damage_Enabled) exitWith {["FCLA_Module_Advanced_Vehicle_Damage", "• MÓDULO: ASIGNAR DAV", "¡El addon option: Daño avanzado de vehículo (ACE), debe estar desactivado!"] call FCLA_Common_fnc_errorMessage;};
if ((count _compatibleSynchronizedObjects) <= 0) exitWith {["FCLA_Module_Advanced_Vehicle_Damage", "• MÓDULO: ASIGNAR DAV", "¡Error! El/Un módulo 'Asignar DAV' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Evitar daño fatal al vehículo.
{[_x, _damageWeaponsState, _damageItemsState] call FCLA_Common_fnc_setAdvancedVehicleDamage;} forEach _compatibleSynchronizedObjects;


//Eliminar módulo.
deleteVehicle _module;
