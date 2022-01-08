
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Fuerza a los vehículos a disparar hacia el cielo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */
//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
_assignedEntity = _module getVariable ["FCLA_Assigned_Entity", objNull];
_assignedCurator = _module getVariable ["FCLA_Assigned_Curator", objNull];
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_ammoClass = _module getVariable ["FCLA_Ammo", ""];
_weaponClass = _module getVariable ["FCLA_Weapon", ""];
_minimumShots = [_module getVariable ["FCLA_Minimum_Shots", 0], 0] call BIS_fnc_cutDecimals;
_maximumShots = [_module getVariable ["FCLA_Maximum_Shots", 0], 0] call BIS_fnc_cutDecimals;
_minimumDelay = [_module getVariable ["FCLA_Minimum_Delay", 0], 0] call BIS_fnc_cutDecimals;
_maximumDelay = [_module getVariable ["FCLA_Maximum_Delay", 0], 0] call BIS_fnc_cutDecimals;
_compatibleSynchronizedObjects = {_x in vehicles} count _synchronizedObjects;
_moreThanOneSynchronizedObjects = if (isNull _assignedEntity) then {_compatibleSynchronizedObjects >= 2;} else {false};
_areNotCompatibleSynchronizedObjects = if (isNull _assignedEntity) then {_compatibleSynchronizedObjects <= 0;} else {false};
if ((_ammoClass == "") || (_weaponClass == "") || (_minimumShots <= 0) || (_maximumShots <= 0) || (_minimumDelay <= 0) || (_maximumDelay <= 0) || (_moreThanOneSynchronizedObjects) || (_areNotCompatibleSynchronizedObjects)) exitWith {["¡Error! El/Un módulo 'Asignar disparos ambientales' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Efectuar disparos.
_findedVehicle = if (isNull _assignedEntity) then {_synchronizedObjects findIf {_x in vehicles;};} else {_assignedEntity;};
_vehicle = if (isNull _assignedEntity) then {_synchronizedObjects select _findedVehicle;} else {_assignedEntity;};
_hasNotWeapons = (count (weapons _vehicle)) <= 0;
_hasNotMagazines = (count (magazines _vehicle)) <= 0;
if ((_hasNotWeapons) || (_hasNotMagazines)) exitWith {["¡Error! El/Un módulo 'Asignar disparos ambientales' no se pudo inicializar porque el vehículo no posee armas y/o municiones."] call BIS_fnc_error;};

_vehicle setVariable ["FCLA_Ambient_Fire", true, true];
[_vehicle, _weaponClass, _ammoClass, [_minimumShots, _maximumShots], [_minimumDelay, _maximumDelay]] call FCLA_Common_fnc_setAmbientFired;


//Detener disparos.
[{(!alive (_this select 0)) || (!alive (_this select 1)) || !((_this select 1) getVariable ["FCLA_Ambient_Fire", false])}, {
  deleteVehicle (_this select 0);
  (_this select 1) setVariable ["FCLA_Ambient_Fire", nil, true];
}, [_module, _vehicle]] call CBA_fnc_waitUntilAndExecute;


//Agregar a objetos editables.
_curatorLogic = getAssignedCuratorLogic _assignedCurator;
_curatorLogic addCuratorEditableObjects [[_module], false];
