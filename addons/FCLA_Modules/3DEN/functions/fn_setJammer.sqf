
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un jammer que bloquea/interfiere las senales de comunicacion..
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
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_canBeDisabled = _module getVariable ["FCLA_Deactivatable", false];
_affectVehicles = _module getVariable ["FCLA_Affect_Vehicles", false];
_needHackingDevice = _module getVariable ["FCLA_Need_Hacking_Device", false];
_compatibleSynchronizedObjects = _synchronizedObjects select {!(_x isKindOf "EmptyDetector")};
_numberOfCompatibleSynchronizedObjects = count _compatibleSynchronizedObjects;
_jammerMaxRad = if ((selectMax [_moduleArea select 0, _moduleArea select 1]) <= 0) then {worldSize * 2;} else {selectMax [_moduleArea select 0, _moduleArea select 1];};



//Pegar modulo.
_findedEntity = if (_numberOfCompatibleSynchronizedObjects == 1) then {0;} else {-1;};
_jammerSource = if (_findedEntity > -1) then {_compatibleSynchronizedObjects select _findedEntity;} else {_module;};
if (_jammerSource != _module) then {_module attachTo [_jammerSource, [0, 0, 0]];};


//Generar jammer.
[{
  _args params ["_module", "_moduleArea", "_jammerSource", "_jammerMaxRad", "_jammerQuarterOfMaxRad", "_canBeDisabled", "_affectVehicles"];
  _areNotAlive = (!alive _module) || (!alive _jammerSource);
  _isDesactivated = _jammerSource getVariable ["FCLA_Hacked", false];
  _unitsInArea = allUnits select {_x inArea [_jammerSource, _moduleArea select 0, _moduleArea select 1, _moduleArea select 2, false, _moduleArea select 4]};
  _vehiclesInArea = vehicles select {_x inArea [_jammerSource, _moduleArea select 0, _moduleArea select 1, _moduleArea select 2, false, _moduleArea select 4]};
  _unitsNotInArea = allUnits select {(isObjectHidden _x) || !(_x in _unitsInArea)};
  _vehiclesNotInArea = vehicles select {!(_x in _vehiclesInArea)};
  _entitiesAffected = _jammerSource getVariable ["FCLA_Entities_Affected", []];
  _normalRadioRange = if (isNil "FCLA_TFAR_Multiplicator") then {1;} else {FCLA_TFAR_Multiplicator;};
  if ((_areNotAlive) || (_isDesactivated)) exitWith {
    deleteVehicle _module;
    {
      _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
    } forEach (_unitsInArea + _unitsNotInArea);
    if ((!alive _module) && (_canBeDisabled) && (_module != _jammerSource)) then {[_jammerSource] remoteExec ["removeAllActions", 0, true];};
    if (_affectVehicles) then {{_x setVariable ["tf_range", _normalRadioRange, true];} forEach (_vehiclesInArea + _vehiclesNotInArea);};
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

  {
    _isNotHidden = !isObjectHidden _x;
    if (_isNotHidden) then {
      _affectedRadioRange = linearConversion [_jammerMaxRad, _jammerQuarterOfMaxRad, _x distance _jammerSource, _normalRadioRange, 0, true];
      _x setVariable ["tf_sendingDistanceMultiplicator", _affectedRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _affectedRadioRange, true];
      if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
    };
  } forEach _unitsInArea;

  if (_affectVehicles) then {
    {
      _affectedRadioRange = linearConversion [_jammerMaxRad, _jammerQuarterOfMaxRad, _x distance _jammerSource, _normalRadioRange, 0, true];
      _x setVariable ["tf_range", _affectedRadioRange, true];
      if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
    } forEach _vehiclesInArea;
  };

  {
    if (_x in _entitiesAffected) then {
      _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
      _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
      _entitiesAffected = _entitiesAffected - [_x];
    };
  } forEach _unitsNotInArea;

  if (_affectVehicles) then {
    {
      if (_x in _entitiesAffected) then {
        _x setVariable ["tf_range", _normalRadioRange, true];
        _entitiesAffected = _entitiesAffected - [_x];
      };
    } forEach _vehiclesNotInArea;
  };
  _jammerSource setVariable ["FCLA_Entities_Affected", _entitiesAffected, true];
}, 0.5, [_module, _moduleArea, _jammerSource, _jammerMaxRad, (25 * _jammerMaxRad) / 100, _canBeDisabled, _affectVehicles]] call CBA_fnc_addPerFrameHandler;


//Accion para desactivar.
if ((_module == _jammerSource) || (!_canBeDisabled)) exitWith {};
[_jammerSource, "desactivar jammer", "\FCLA_Data\Hold_Actions\Deactivate_Jammer.paa", _needHackingDevice] call FCLA_Common_fnc_hackDevice;


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
  ["FCLA_GUI_Message", ["JAMMER DESACTIVADO", "El jammer '" + (_this select 0) + "' ha sido desactivado con exito."], _unitsWithCurator] call CBA_fnc_targetEvent;
}, [_jammerID, _jammerSource]] call CBA_fnc_waitUntilAndExecute;
