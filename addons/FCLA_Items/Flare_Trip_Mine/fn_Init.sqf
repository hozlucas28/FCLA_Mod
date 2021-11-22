
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una bengala roja al activar el cable trampa.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

if (isServer) then {
  _flarePos = ASLToATL (_this select 3);
  _randomSound = selectRandom ["A3\Sounds_F_Kart\Weapons\starting_pistol_1.wss", "A3\Sounds_F_Kart\Weapons\starting_pistol_2.wss", "A3\Sounds_F_Kart\Weapons\starting_pistol_3.wss"];
  playSound3D [_randomSound, objNull, false, _this select 3, 3, 1, 300];

  [{
    _flareObj = createVehicle ["F_20mm_Red", [_this select 0, _this select 1, (_this select 2) + 150], [], 0, "NONE"];
    _flareObj setVelocity [0, 0, -0.01];
  }, _flarePos, 1] call CBA_fnc_waitAndExecute;
};
