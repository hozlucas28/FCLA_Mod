
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una animación en la unidad, enviada como argumento 0.
 * Evita conflictos con el mod.
 *
 * Arguments:
 *            0: Unidad que realizara la animación. <UNIT>
 *            1: Classname de la animación a reproducir. <STRING>
 *            2: Tipo de reproducción de la animación.
 *                # Reproducciones aceptadas: "playAction", "playActionNow",
 *                                            "PlayMove", "PlayMoveNow" y "SwitchMove".
 *
 *            3: ¿Ignorar llamados anteriores?, opcional. <BOOL> (default: false)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Example:
 *             //Opcional sin definir.
 *             [player, "FCLA_Tactical_Position_Up_v1", "playActionNow"] call FCLA_Common_fnc_playAnimation;
 *
 *             //Opcional definido.
 *             [player, "FCLA_Tactical_Position_Down", "playActionNow", true] call FCLA_Common_fnc_playAnimation;
 *
 * Note:
 * La función le asigna el valor <true> a la variable de tipo
 * objeto "FCLA_Playing_Animation" asociada a la unidad que reproduce la
 * animación, para asi evitar que un llamado a la función interrumpa al anterior.
 * Si se le asigna el valor <true> al argumento 3 esto sera ignorado.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_unit", objNull, [objNull, teamMemberNull], 0],
        ["_animation", "", [""], 0],
        ["_typeOfReproduction", "", [""], 0],
        ["_forceReproduction", false, [true], 0]
       ];



//Verificar argumentos.
_typeOfReproduction = toUpper _typeOfReproduction;
_inVehicle = if (_typeOfReproduction == "SWITCHMOVE") then {!isNull objectParent _unit} else {false};
_isUnitPlayingAnimation = _unit getVariable ["FCLA_Playing_Animation", false];
_acceptedTypesOfReproduction = ["PLAYACTION", "PLAYACTIONNOW", "PLAYMOVE", "PLAYMOVENOW", "SWITCHMOVE"];
if ((isNull _unit) || !(_typeOfReproduction in _acceptedTypesOfReproduction) || (_inVehicle) || ((!_forceReproduction) && (_isUnitPlayingAnimation))) exitWith {false};



//Reproducir animación.
_unit setVariable ["FCLA_Playing_Animation", true, true];
switch (_typeOfReproduction) do {
  case "PLAYACTION": {[_unit, _animation] call ACE_Common_fnc_doGesture;};
  case "PLAYACTIONNOW": {[_unit, _animation] call ACE_Common_fnc_doGesture;};
  case "PLAYMOVE": {[_unit, _animation, 0] call ACE_Common_fnc_doAnimation;};
  case "PLAYMOVENOW": {[_unit, _animation, 1] call ACE_Common_fnc_doAnimation;};
  case "SWITCHMOVE": {[_unit, _animation, 2] call ACE_Common_fnc_doAnimation;};
};


//Eliminar variable al terminar animación.
if ((_typeOfReproduction == "playAction") || (_typeOfReproduction == "playActionNow")) then {
  [{(gestureState (_this select 0)) != (_this select 1);}, {
    (_this select 0) setVariable ["FCLA_Playing_Animation", nil, true];
  }, [_unit, _animation]] call CBA_fnc_waitUntilAndExecute;
} else {
  [{(animationState (_this select 0)) != (_this select 1);}, {
    (_this select 0) setVariable ["FCLA_Playing_Animation", nil, true];
  }, [_unit, _animation]] call CBA_fnc_waitUntilAndExecute;
};
true
