
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite hackear los dispositivos a travez de una acción.
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
_deviceID = _module getVariable ["FCLA_Device_ID", ""];
_needHackingDevice = _module getVariable ["FCLA_Need_Hacking_Device", false];
_areNotCompatibleSynchronizedObjects = ({!(_x isKindOf "CAManBase")} count _synchronizedObjects) <= 0;
if ((_deviceID == "") || (_areNotCompatibleSynchronizedObjects)) exitWith {};



//Agregar acción para hackear.
{
  if (_x isKindOf "CAManBase") exitWith {};
  [_x, "Hackear dispositivo", _needHackingDevice] call FCLA_Common_fnc_hackDevice;

  [{(!alive (_this select 1)) || ((_this select 1) getVariable ["FCLA_Hacked", false])}, {
    if (!alive (_this select 1)) exitWith {};
    _unitsWithCurator = [];
    {
      _curatorUnit = getAssignedCuratorUnit _x;
      if (isNull _curatorUnit) exitWith {};
      _unitsWithCurator pushBack _curatorUnit;
    } forEach allCurators;
    ["FCLA_GUI_Message", ["DISPOSITIVO HACKEADO", "El dispositivo '" + (_this select 0) + "' ha sido hackeado con éxito."], _unitsWithCurator] call CBA_fnc_targetEvent;
  }, [_deviceID, _x]] call CBA_fnc_waitUntilAndExecute;
} forEach _synchronizedObjects;
