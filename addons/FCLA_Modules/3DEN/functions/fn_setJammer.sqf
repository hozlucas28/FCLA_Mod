
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un jammer que bloquea/interfiere las señales de comunicación..
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_jammerID = _module getVariable ["FCLA_Jammer_ID", ""];
_moduleArea = _module getvariable ["objectArea", [0, 0, 0, false, -1]];
_deactivatable = _module getVariable ["FCLA_Deactivatable", false];
_affectVehicles = _module getVariable ["FCLA_Affect_Vehicles", false];
_needHackingDevice = _module getVariable ["FCLA_Need_Hacking_Device", false];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;



//Generar jammer.
[{
  _args params ["_module", "_rad", "_affectVehicles"];
  _isNotAlive = !alive _module;
  _unitsInArea = allUnits select {_x inArea [_module, _rad, _rad, 0, false, _rad]};
  _vehiclesInArea = vehicles select {_x inArea [_module, _rad, _rad, 0, false, _rad]};
  _unitsNotInArea = allUnits select {!(_x inArea [_module, _rad, _rad, 0, false, _rad])};
  _vehiclesNotInArea = vehicles select {!(_x inArea [_module, _rad, _rad, 0, false, _rad])};
  _entitiesAffected = _module getVariable ["FCLA_Entities_Affected", []];
  _normalRadioRange = missionNamespace getVariable ["FCLA_TFAR_Multiplicator", 1];
  if (_isNotAlive) exitWith {
    deleteVehicle _module;
    {
      _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
    } forEach (_unitsInArea + _unitsNotInArea);
    if (_affectVehicles) then {{_x setVariable ["tf_range", _normalRadioRange, true];} forEach (_vehiclesInArea + _vehiclesNotInArea);};
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  {
    _affectedRadioRange = linearConversion [_rad, _rad / 2, _x distance _module, _normalRadioRange, 0, true];
    _x setVariable ["tf_sendingDistanceMultiplicator", _affectedRadioRange, true];
    _x setVariable ["tf_receivingDistanceMultiplicator", _affectedRadioRange, true];
    if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
  } forEach _unitsInArea;

  if (_affectVehicles) then {
    {
      _affectedRadioRange = linearConversion [_rad, _rad / 2, _x distance _module, _normalRadioRange, 0, true];
      _x setVariable ["tf_range", _affectedRadioRange, true];
      if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
    } forEach _vehiclesInArea;
  };

  {
    if (!(_x in _entitiesAffected)) exitWith {};
    _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
    _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
    _entitiesAffected = _entitiesAffected - [_x];
  } forEach _unitsNotInArea;

  if (_affectVehicles) then {
    {
      if (!(_x in _entitiesAffected)) exitWith {};
      _x setVariable ["tf_range", _normalRadioRange, true];
      _entitiesAffected = _entitiesAffected - [_x];
    } forEach _vehiclesNotInArea;
  };
  _module setVariable ["FCLA_Entities_Affected", _entitiesAffected, true];
}, 0.5, [_module, selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4], _affectVehicles]] call CBA_fnc_addPerFrameHandler;


//Eliminar módulo.
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_jammerSource = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {_module;};
if (_module == _jammerSource) exitWith {};
_module attachTo [_jammerSource, [0, 0, 0]];
[{(!alive (_this select 0)) || (!alive (_this select 1))}, {deleteVehicle (_this select 0);}, [_module, _jammerSource]] call CBA_fnc_waitUntilAndExecute;


//Acción para desactivar.
if (!_deactivatable) exitWith {};
[_jammerSource, "Desactivar jammer", "\FCLA_Data\Hold_Actions\Desactivate_Jammer.paa", _needHackingDevice] call FCLA_Common_fnc_hackDevice;


//Notificar a los Zeus.
if (_jammerID == "") exitWith {};
[{(!alive (_this select 1)) || ((_this select 1) getVariable ["FCLA_Hacked", false])}, {
  if (!alive (_this select 1)) exitWith {};
  _unitsWithCurator = [];
  {
    _curatorUnit = getAssignedCuratorUnit _x;
    if (isNull _curatorUnit) exitWith {};
    _unitsWithCurator pushBack _curatorUnit;
  } forEach allCurators;
  ["FCLA_GUI_Message", ["JAMMER DESACTIVADO", "El jammer '" + (_this select 0) + "' ha sido desactivado con éxito."], _unitsWithCurator] call CBA_fnc_targetEvent;
}, [_jammerID, _jammerSource]] call CBA_fnc_waitUntilAndExecute;
