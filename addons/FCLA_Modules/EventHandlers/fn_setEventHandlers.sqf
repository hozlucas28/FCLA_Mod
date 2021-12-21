
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea controladores de eventos que se utilizan en el addon "FCLA Modules".
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA_EMP", {
  _this spawn {
    params ["_logic", "_rad"];
    _player = call CBA_fnc_currentUnit;

    if (!(_player inArea [_logic, _rad + (_rad / 2), _rad + (_rad / 2), 0, false, _rad + (_rad / 2)])) then {
      enableCamShake true;
      addCamShake [1, 50, 27];
    };
    if (!(_player inArea [_logic, _rad, _rad, 0, false, _rad])) exitWith {};

    sleep 1;
    cutText ["", "WHITE OUT", 1];
    hint parseText "<t color='#FF0000'>Fuiste afectado por un PEM.<br/>Tus accesorios electrónicos se han destruido.</t>";
    {playSound _x;} forEach ["Combat_Deafness", "FCLA_Radiation", selectRandom ["Earthquake_01", "Earthquake_02", "Earthquake_03", "Earthquake_04"]];

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
