
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite hackear los dispositivos a travez de una accion.
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
_deviceID = _module getVariable ["FCLA_Device_ID", ""];
_needHackingDevice = _module getVariable ["FCLA_Need_Hacking_Device", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x in allUnits) && !(_x isKindOf "EmptyDetector")};
if ((count _compatibleSynchronizedObjects) != 1) exitWith {["FCLA_Module_Hack_Device", "- MODULO: DISPOSITIVO HACKEABLE", "¡Error! El/Un modulo 'Dispositivo hackeable' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Agregar accion para hackear.
{
  [_x, "hackear dispositivo", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa", _needHackingDevice] call FCLA_Common_fnc_hackDevice;

  if (_deviceID != "") then {
    [{(!alive (_this select 1)) || ((_this select 1) getVariable ["FCLA_Hacked", false])}, {
      if (!alive (_this select 1)) exitWith {};
      _unitsWithCurator = [];
      {
        _curatorUnit = getAssignedCuratorUnit _x;
        if (isNull _curatorUnit) exitWith {};
        _unitsWithCurator pushBack _curatorUnit;
      } forEach allCurators;
      ["FCLA_GUI_Message", ["DISPOSITIVO HACKEADO", "El dispositivo '" + (_this select 0) + "' ha sido hackeado con exito."], _unitsWithCurator] call CBA_fnc_targetEvent;
    }, [_deviceID, _x]] call CBA_fnc_waitUntilAndExecute;
  };
} forEach _compatibleSynchronizedObjects;


//Eliminar modulo.
deleteVehicle _module;
