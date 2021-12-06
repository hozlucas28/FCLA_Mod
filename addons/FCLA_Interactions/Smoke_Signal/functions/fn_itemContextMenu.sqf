
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea una acción contextual que cambia el tiempo para la detonación del
 * proyectil de la señal de humo.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

_conditionToEnable = {
  params ["_unit", "_container", "_item"];
  #include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"
  _isActivated = _unit getVariable ["FCLA_Smoke_Signal", false];
  _isNotUnderwater = !underwater _unit;
  _isCompatibleSmokeMagazine = _item in _compatibleSmokeMagazines;
  (FCLA_Smoke_Signal_Allowed) && (_isActivated) && (_isNotUnderwater) && (_isCompatibleSmokeMagazine);
};

_conditionToShow = {
  params ["_unit", "_container", "_item"];
  #include "\FCLA_Interactions\Smoke_Signal\includes\Smoke_Magazines.hpp"
  _isActivated = _unit getVariable ["FCLA_Smoke_Signal", false];
  _isNotUnderwater = !underwater _unit;
  _isCompatibleSmokeMagazine = _item in _compatibleSmokeMagazines;
  (FCLA_Smoke_Signal_Allowed) && (_isActivated) && (_isNotUnderwater) && (_isCompatibleSmokeMagazine);
};

_Statement = {
  ["AJUSTAR TEMPORIZADOR",
    [
     ["SLIDER", "Temporizador",
      [
       1,
       5,
       1,
       0
      ], true
     ]
    ],
  {
    (_this select 1) setVariable ["FCLA_Smoke_Signal_Timer", (_this select 0) select 0, true];
  }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
};

["##SmokeShell", "MAGAZINE", "Ajustar temporizador", [], "\FCLA_Interactions\Smoke_Signal\data\Timer.paa", [_conditionToEnable, _conditionToShow], _Statement, false, []] call CBA_fnc_addItemContextMenuOption;
