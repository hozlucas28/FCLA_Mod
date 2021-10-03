
/* ----------------------------------------------------------------------------
Function: FCLA_Items_fnc_initTripflare

Description:
    Dispara una bengala roja al activar la mina de donde la función es llamada.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["", "_victim", "", "_tripwirePosASL", "", "", "_ammo", "", ""];



_tripwirePosATL = ASLToATL _tripwirePosASL;
["FCLA_Triggered_Tripflare", _tripwirePosATL] call CBA_fnc_localEvent;

if (isServer) then {
  _triggerSound = selectRandom ["A3\Sounds_F_Kart\Weapons\starting_pistol_1.wss", "A3\Sounds_F_Kart\Weapons\starting_pistol_2.wss", "A3\Sounds_F_Kart\Weapons\starting_pistol_3.wss"];
  _flarePos = _tripwirePosATL getPos [10, random 360];
  playSound3D [_triggerSound, objNull, false, _tripwirePosASL, 3, 1, 300];
  _flarePos set [2, 125 + random (25)];

  sleep 1;
  _flare = createVehicle ["F_20mm_Red", _flarePos, [], 0, "NONE"];
  _flare setVelocity [0,0,-0.01];
};
