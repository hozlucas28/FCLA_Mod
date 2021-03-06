
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto que simula el trastorno por estres postraumatico en la
 * unidad, enviada como argumento 0.
 *
 * Arguments:
 *            0: Unidad a la que se le aplicara el trastorno. <UNIT>
 *            1: ¿Llora?, opcional. <BOOL> (default: true)
 *            2: ¿Escucha voces?, opcional. <BOOL> (default: true)
 *            3: ¿Pensamientos no deseados?, opcional. <BOOL> (default: true)
 *            4: ¿Movimientos involuntarios?, opcional. <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 *             //Opcional sin definir.
 *             [player] call FCLA_Common_fnc_setPTSD;
 *
 *             //Opcional definidos.
 *             [player, true, false, false, true] call FCLA_Common_fnc_setPTSD;
 *
 * Notes:
 * Se recomienda utilizar esta funcion a travez del evento
 * personalizado "FCLA_Set_PTSD".
 *
 * Los sintomas (argumento 1 al 4) se haran notar cada 10 minutos,
 * 12 minutos o 15 minutos, una vez llamada la funcion.
 *
 * Para eliminar este efecto de la unidad, asignele la variable de tipo
 * objeto "FCLA_Disable_PTSD" con con el valor <true>.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_cry", true, [true], 0],
        ["_voices", true, [true], 0],
        ["_unwantedThoughts", true, [true], 0],
        ["_involuntaryMovements", true, [true], 0]
       ];
if ((isNull _unit) || ((!_cry) && (!_voices) && (!_unwantedThoughts) && (!_involuntaryMovements))) exitWith {false};
_unit setVariable ["FCLA_has_PTSD", true, true];



//Generar trastorno.
_handle = [{
  _args params ["_unit", "_cry", "_voices", "_unwantedThoughts", "_involuntaryMovements"];
  _onPTSD = _unit getVariable ["FCLA_PTSD_Initialized", false];
  _inCurator = !isNull findDisplay 312;
  _isNotAlive = !alive _unit;
  _inCameraMode = _unit in (call ACE_Spectator_fnc_players);
  _isUnconscious = _unit getVariable ["ACE_isUnconscious", false];
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
  if ((_onPTSD) || (_inCurator) || (_isNotAlive) || (_inCameraMode) || (_isUnconscious)) exitWith {};
  _unit setVariable ["FCLA_PTSD_Initialized", true, true];


  //Llorar y escuchar voces.
  if (_cry) then {[_unit, "FCLA_Man_Crying", 35, 100, false] call FCLA_Common_fnc_globalSay3D;};
  if (_voices) then {playSound "FCLA_Whispers_Fear_8D";};


  //Pensamientos no deseados.
  if (_unwantedThoughts) then {
    _sentence = selectRandom [
                              "¡Por que el! porque no fui yo...",
                              "¡Que hice mal! murio por mi culpa!",
                              "¡Tenia una familia! ya no me queda nada.",
                              "¡Mi esposa me abandono! mi mejor amigo ya no esta a mi lado...",
                              "¡Debi ser yo quien saliera primero! tenia una vida por delante...",
                              "¡Esto no es una guerra, es una masacre!",
                              "Sufri todo esto... ¡Para enorgullecer a mi familia!",
                              "Quien volvera a casa... ¡Un veterano mas, una estadistica!"
                             ];
    ["[Sdo] Usted", _sentence] spawn BIS_fnc_showSubtitle;
  };


  if (_involuntaryMovements) then {
    _randomSleep = [25, 50] call FCLA_Common_fnc_getRandomNumber;
    [{
      if (isNull objectParent _this) then {
        [_this, objNull, 5] call ACE_hitreactions_fnc_fallDown;
        _this forceWeaponFire [currentMuzzle _this, currentWeaponMode _this];
      } else {
        _vehicle = vehicle _this;
        [_vehicle, currentMuzzle _this, _vehicle unitTurret _this] call BIS_fnc_fire;
      };
      [_this, false] call FCLA_Common_fnc_Shellshock;
    }, _unit, _randomSleep] call CBA_fnc_waitAndExecute;
  };
  [{_this setVariable ["FCLA_PTSD_Initialized", nil, true];}, _unit, 108] call CBA_fnc_waitAndExecute;
}, 600 + (selectRandom [0, 100, 300]), [_unit, _cry, _voices, _unwantedThoughts, _involuntaryMovements]] call CBA_fnc_addPerFrameHandler;



//Quitar trastorno.
[{
  !((_this select 0) getVariable ["FCLA_has_PTSD", false]) || ((_this select 0) getVariable ["FCLA_Disable_PTSD", false])
}, {
  (_this select 0) setVariable ["FCLA_has_PTSD", nil, true];
  (_this select 0) setVariable ["FCLA_Disable_PTSD", nil, true];
  [_this select 1] call CBA_fnc_removePerFrameHandler;
}, [_unit, _handle]] call CBA_fnc_waitUntilAndExecute;
true
