
/********************************************************************************|
|         CONTROLADORES DE EVENTOS (JUGADORES) - "ANIMACIONES MEJORADAS"         |
|********************************************************************************/

//Reproduce una animacion al activar/desactivar la vision nocturna/termica.
if (hasInterface) then {
  ["visionMode", {
    params ["_unit"];
    _hasNotNVG = (hmd _unit) == "";
    _severalConditions = [_unit, [1, 4, 6, 7, 8, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
    if ((cameraView == "GUNNER") || (_hasNotNVG) || (_severalConditions)) exitWith {};
    [_unit, "FCLA_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  }, false] call CBA_fnc_addPlayerEventHandler;
};
