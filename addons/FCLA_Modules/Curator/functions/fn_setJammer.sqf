
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para coloar un jammer que bloquea/interfiere las señales de
 * comunicación de las radios de onda corta y larga, incluyendo vehículos.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Colocar jammer", {
  if ((isNull (_this select 1)) || ((_this select 1) in allUnits)) exitWith {["ERROR! EL MÓDULO DEBE SER COLOCADO SOBRE UN OBJETO"] call ZEN_Common_fnc_showMessage;};
  ["JAMMER",
  [
   ["EDIT", ["Identificador", "Nombre personalizado para poder reconocer al dispositivo, cuando se le informe a los Zeus que ha sido desactivado.\n• Si no se define un identificador no se informara a los Zeus."],
    [
     "",
     nil,
     nil
    ],
    true
   ],
   ["SLIDER", ["Radio", "Aquellas entidades comprendidas dentro del radio definido seran afectadas por el jammer, tomando como origen del radio la entidad donde se colocó el módulo.\n• Nota: si colocas -1 todo el mapa se vera afectado por el jammer."],
    [
     -1,
     5000,
     500,
     0
    ],
    false
   ],
   ["TOOLBOX", ["Desactivable", "Si se activa se podra desactivar el jammer a travez de una acción."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["¿Afectar vehículos?", "Si se activa las radios de los vehículos tambien seran afectadas."],
    [
     0,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ],
   ["TOOLBOX", ["¿Se necesita dispositivo?", "Si se activa se necesitara de un dispositivo de hackeo para realizar la acción que desactiva al jammer."],
    [
     1,
     1,
     2,
     ["Si", "No"],
     nil
    ],
    false
   ]
  ],
  {
    (_this select 0) params ["_jammerID", "_jammerRad", "_canBeDisabled", "_affectVehicles", "_needHackingDevice"];
    (_this select 1) params ["_jammerSource"];
    _jammerRad = if (_jammerRad <= -1) then {worldSize * 2;} else {_jammerRad;};
    _jammerHalfRad = _jammerRad / 2;
    _canBeDisabled = if (_canBeDisabled == 0) then {true;} else {false;};
    _affectVehicles = if (_affectVehicles == 0) then {true;} else {false;};
    _needHackingDevice = if (_needHackingDevice == 0) then {true;} else {false;};


    [{
      _args params ["_jammerSource", "_jammerRad", "_jammerHalfRad", "_affectVehicles"];
      _isNotAlive = !alive _jammerSource;
      _isDesactivated = _jammerSource getVariable ["FCLA_Hacked", false];
      _unitsInArea = allUnits select {_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad]};
      _vehiclesInArea = vehicles select {_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad]};
      _unitsNotInArea = allUnits select {!(_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad])};
      _vehiclesNotInArea = vehicles select {!(_x inArea [_jammerSource, _jammerRad, _jammerRad, 0, false, _jammerRad])};
      _entitiesAffected = _jammerSource getVariable ["FCLA_Entities_Affected", []];
      _normalRadioRange = missionNamespace getVariable ["FCLA_TFAR_Multiplicator", 1];
      if ((_isNotAlive) || (_isDesactivated)) exitWith {
        {
          _x setVariable ["tf_sendingDistanceMultiplicator", _normalRadioRange, true];
          _x setVariable ["tf_receivingDistanceMultiplicator", _normalRadioRange, true];
        } forEach (_unitsInArea + _unitsNotInArea);
        if (_affectVehicles) then {{_x setVariable ["tf_range", _normalRadioRange, true];} forEach (_vehiclesInArea + _vehiclesNotInArea);};
        [_handle] call CBA_fnc_removePerFrameHandler;
      };
      if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};

      {
        _affectedRadioRange = linearConversion [_jammerRad, _jammerHalfRad, _x distance _jammerSource, _normalRadioRange, 0, true];
        _x setVariable ["tf_sendingDistanceMultiplicator", _affectedRadioRange, true];
        _x setVariable ["tf_receivingDistanceMultiplicator", _affectedRadioRange, true];
        if (!(_x in _entitiesAffected)) then {_entitiesAffected pushBack _x;};
      } forEach _unitsInArea;

      if (_affectVehicles) then {
        {
          _affectedRadioRange = linearConversion [_jammerRad, _jammerHalfRad, _x distance _jammerSource, _normalRadioRange, 0, true];
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
    }, 0.5, [_jammerSource, _jammerRad, _jammerHalfRad, _affectVehicles]] call CBA_fnc_addPerFrameHandler;


    //Acción para desactivar.
    if (!_canBeDisabled) exitWith {};
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
    ["JAMMER GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this select 1] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Jammer.paa"] call ZEN_Custom_Modules_fnc_Register;
