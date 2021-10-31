
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Reproduce una serie de sonidos relacionados con la respiración,
 * simulando el uso de una máscara.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_handle = _this spawn {
  while {(alive _this) && (_this getVariable ["FCLA_Mask_Equipped", false])} do {
    sleep (0.75 + (round (random [2, 3, 4])));
    _inThirdPerson = cameraView == "External";
    _severalConditions = [_this, [1, 2, 4, 6, 7, 10, 11, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
    if ((_inThirdPerson) || (_severalConditions)) exitWith {};

    _randomSound = selectRandom ["FCLA_Mask_Inhale_1", "FCLA_Mask_Inhale_2", "FCLA_Mask_Inhale_3", "FCLA_Mask_Inhale_4"];
    playSound _randomSound;

    sleep (0.75 + (round (random [2, 3, 4])));
    _inThirdPerson = cameraView == "External";
    _severalConditions = [_this, [1, 2, 4, 6, 7, 10, 11, 12, 13, 14, 15, 16]] call FCLA_Common_fnc_severalConditions;
    if ((_inThirdPerson) || (_severalConditions)) exitWith {};

    _randomSound = selectRandom ["FCLA_Mask_Exhalation_1", "FCLA_Mask_Exhalation_2", "FCLA_Mask_Exhalation_3", "FCLA_Mask_Exhalation_4"];
    playSound _randomSound;
  };
};


//Detener sonidos (inhalación/exhalación).
[{!((_this select 0) getVariable ["FCLA_Mask_Equipped", false])}, {
  terminate (_this select 1);
}, [_this, _handle]] call CBA_fnc_waitUntilAndExecute;
