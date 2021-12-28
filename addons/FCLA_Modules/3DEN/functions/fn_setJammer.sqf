
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
_forceDeactivation = _module getVariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_jammerID = _module getVariable ["FCLA_Jammer_ID", ""];
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_canBeDisabled = _module getVariable ["FCLA_Deactivatable", false];
_affectVehicles = _module getVariable ["FCLA_Affect_Vehicles", false];
_needHackingDevice = _module getVariable ["FCLA_Need_Hacking_Device", false];
_numberOfCompatibleSynchronizedObjects = {!(_x isKindOf "EmptyDetector")} count _synchronizedObjects;
_jammerRad = if ((selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4]) <= -1) then {worldSize * 2;} else {selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4];};



//Pegar módulo.
_findedEntity = _synchronizedObjects findIf {!(_x isKindOf "EmptyDetector")};
_jammerSource = if ((_findedEntity > -1) && (_numberOfCompatibleSynchronizedObjects == 1)) then {_synchronizedObjects select _findedEntity;} else {_module;};
if (_jammerSource != _module) then {_module attachTo [_jammerSource, [0, 0, 0]];};


//Generar jammer.
[{
  _args params ["_module", "_jammerSource", "_jammerRad", "_jammerQuarterOfRad", "_affectVehicles"];
  _areNotAlive = (!alive _module) || (!alive _jammerSource);
  _isDesactivated = _jammerSource getVariable ["FCLA_Hacked", false];
  _unitsInArea = allUnits select {_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad]};
  _vehiclesInArea = vehicles select {_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad]};
  _unitsNotInArea = allUnits select {(isObjectHidden _x) || !(_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad])};
  _vehiclesNotInArea = vehicles select {!(_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad])};
  _entitiesAffected = _jammerSource getVariable ["FCLA_Entities_Affected", []];
  _normalRadioRange = missionNamespace getVariable ["FCLA_TFAR_Multiplicator", 1];
  if ((_areNotAlive) || (_isDesactivated)) exitWith {
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
    _isHidden = isObjectHidden _x;
    if (_isHidden) exitWith {};
    _affectedRadioRange = linearConversion [_jammerRad, _jammerQuarterOfRad, _x distance _jammerSource, _normalRadioRange, 0, true];
    _x setVariable ["tf_sendingDistanceMultiplicator", _affectedRadioRange, true];
    _x setVariable ["tf_receivingDistanceMultiplicator", _affectedRadioRange, true];
    if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
  } forEach _unitsInArea;

  if (_affectVehicles) then {
    {
      _affectedRadioRange = linearConversion [_jammerRad, _jammerQuarterOfRad, _x distance _jammerSource, _normalRadioRange, 0, true];
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
  _jammerSource setVariable ["FCLA_Entities_Affected", _entitiesAffected, true];
}, 0.5, [_module, _jammerSource, _jammerRad, (25 * _rad) / 100, _affectVehicles]] call CBA_fnc_addPerFrameHandler;


//Acción para desactivar.
if ((_module == _jammerSource) || (!_canBeDisabled)) exitWith {};
[_jammerSource, "desactivar jammer", "\FCLA_Data\Hold_Actions\Desactivate_Jammer.paa", _needHackingDevice] call FCLA_Common_fnc_hackDevice;


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
