
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera el efecto de la senal de humo al dispararse un proyectil compatible.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
#include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"



//Verificar argumentos.
_isUnderwater = underwater _unit;
_isDesactivated = !(_unit getVariable ["FCLA_Smoke_Signal", false]);
_isNotCompatibleSmokeMagazine = !(_magazine in _compatibleSmokeMagazines);
if ((!FCLA_Smoke_Signal_Allowed) || (_isUnderwater) || (_isDesactivated) || (_isNotCompatibleSmokeMagazine)) exitWith {};



//Generar efecto.
_timer = _unit getVariable ["FCLA_Smoke_Signal_Timer", 1];
[{
  params ["_magazine", "_projectile"];
  #include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"

  _projectilePos = getPos _projectile;
  _smokeColor = switch (true) do {
    case (_magazine in _redSmokeMagazines): {[1, 0.253, 0, 1];};
    case (_magazine in _blueSmokeMagazines): {[0.266, 0.537, 1, 1];};
    case (_magazine in _greenSmokeMagazines): {[0.1, 0.5, 0.05, 1];};
    case (_magazine in _orangeSmokeMagazines): {[1, 0.54, 0.21, 1];};
    case (_magazine in _yellowSmokeMagazines): {[0.956, 1, 0.21, 1];};
    case (_magazine in _purpleSmokeMagazines): {[0.8, 0.432, 0.8, 1];};
    default {[1, 1, 1, 1];};
  };

  deleteVehicle _projectile;
  ["FCLA_Smoke_Signal", [objNull, _projectilePos, _smokeColor]] call CBA_fnc_globalEvent;
}, [_magazine, _projectile], _timer] call CBA_fnc_waitAndExecute;
