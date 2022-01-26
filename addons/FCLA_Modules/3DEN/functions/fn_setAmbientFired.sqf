
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
if ((is3DEN) || (isNull _module) || (_synchronizedObjects isEqualTo []) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_ammoClass = _module getVariable ["FCLA_Ammo", ""];
_weaponClass = _module getVariable ["FCLA_Weapon", ""];
_minimumShots = [_module getVariable ["FCLA_Minimum_Shots", 0], 0] call BIS_fnc_cutDecimals;
_maximumShots = [_module getVariable ["FCLA_Maximum_Shots", 0], 0] call BIS_fnc_cutDecimals;
_minimumDelay = [_module getVariable ["FCLA_Minimum_Delay", 0], 0] call BIS_fnc_cutDecimals;
_maximumDelay = [_module getVariable ["FCLA_Maximum_Delay", 0], 0] call BIS_fnc_cutDecimals;
_compatibleSynchronizedObjects = _synchronizedObjects select {_x in vehicles};
if ((_ammoClass == "") || (_weaponClass == "") || (_minimumShots <= 0) || (_maximumShots <= 0) || (_minimumDelay <= 0) || (_maximumDelay <= 0) || ((count _compatibleSynchronizedObjects) != 1)) exitWith {["FCLA_Module_Ambient_Fired", "• MÓDULO: ASIGNAR DISPAROS AMBIENTALES", "¡Error! El/Un módulo 'Asignar disparos ambientales' no se pudo inicializar con éxito."] call FCLA_Common_fnc_errorMessage;};



//Efectuar disparos.
_vehicle = _compatibleSynchronizedObjects select 0;
_hasNotWeapons = (count (weapons _vehicle)) <= 0;
_hasNotMagazines = (count (magazines _vehicle)) <= 0;
if ((_hasNotWeapons) || (_hasNotMagazines)) exitWith {["¡Error! El/Un módulo 'Asignar disparos ambientales' no se pudo inicializar porque el vehículo no posee armas y/o municiones."] call FCLA_Common_fnc_errorMessage;};
[_vehicle, _weaponClass, _ammoClass, [_minimumShots, _maximumShots], [_minimumDelay, _maximumDelay]] call FCLA_Common_fnc_setAmbientFired;


//Detener disparos.
[{(!alive (_this select 0)) || (!alive (_this select 1)) || !((_this select 1) getVariable ["FCLA_Ambient_Fire", false])}, {
  deleteVehicle (_this select 0);
  (_this select 1) setVariable ["FCLA_Ambient_Fire", nil, true];
}, [_module, _vehicle]] call CBA_fnc_waitUntilAndExecute;
