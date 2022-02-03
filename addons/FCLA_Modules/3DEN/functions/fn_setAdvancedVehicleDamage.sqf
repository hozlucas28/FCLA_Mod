
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que los vehiculos reciban un dano fatal, dejandolos con
 * un dano total sin provocar su destruccion.
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
if (ACE_Vehicle_Damage_Enabled) exitWith {["FCLA_Module_Advanced_Vehicle_Damage", "- MODULO: ASIGNAR DAV", "¡El addon option: Dano avanzado de vehiculo (ACE), debe estar desactivado!"] call FCLA_Common_fnc_errorMessage;};
if ((count _compatibleSynchronizedObjects) <= 0) exitWith {["FCLA_Module_Advanced_Vehicle_Damage", "- MODULO: ASIGNAR DAV", "¡Error! El/Un modulo 'Asignar DAV' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Evitar dano fatal al vehiculo.
{[_x, _damageWeaponsState, _damageItemsState] call FCLA_Common_fnc_setAdvancedVehicleDamage;} forEach _compatibleSynchronizedObjects;


//Eliminar modulo.
deleteVehicle _module;
