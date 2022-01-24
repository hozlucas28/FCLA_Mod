
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera un efecto visual simulando un pulso electromagnético.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_EMP_Visual_Effect", {
  _this spawn {
    params ["_logic", "_rad"];
    _player = call CBA_fnc_currentUnit;
    if (isObjectHidden _player) exitWith {};

    if (_player inArea [_logic, _rad + (_rad / 2), _rad + (_rad / 2), 0, false, _rad + (_rad / 2)]) then {
      enableCamShake true;
      addCamShake [1, 25, 27];
    };
    if (!(_player inArea [_logic, _rad, _rad, 0, false, _rad])) exitWith {};

    sleep 1;
    cutText ["", "WHITE OUT", 1];
    if (isDamageAllowed _player) then {[_player, 0.75] call ACE_Medical_fnc_adjustPainLevel;};
    hint parseText "<t color='#FF0000'>Fuiste afectado por un PEM.<br/>Tus accesorios electrónicos se han destruido.</t>";
    {playSound _x;} forEach ["FCLA_Radiation", "Earthquake_01"];

    sleep 0.1;
    titleCut ["", "WHITE IN", 1];
    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [5];
    "dynamicBlur" ppEffectCommit 0;

    sleep 1;
    "dynamicBlur" ppEffectAdjust [1];
    "dynamicBlur" ppEffectCommit 1;

    sleep 5;
    playsound "FCLA_Deafness";
    "dynamicBlur" ppEffectAdjust [0];
    "dynamicBlur" ppEffectCommit 10;

    sleep 10;
    "dynamicBlur" ppEffectEnable false;
  };
}] call CBA_fnc_addEventHandler;
