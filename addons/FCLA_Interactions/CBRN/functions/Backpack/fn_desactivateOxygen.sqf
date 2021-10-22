
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Apaga el suministro de oxígeno.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller"];
_currentGoggles = goggles _caller;
_currentBackpack = backpack _caller;
_currentBackpackContainer = backpackContainer _caller;
_backpacksWithFirehose = ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];
_masksWithFirehose = ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_RegulatorMask_F"];



//Ocultar manguera.
[_caller, "FCLA_Animation_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;
if ((_currentGoggles in _masksWithFirehose) && (_currentBackpack in _backpacksWithFirehose)) then {
  switch (true) do {
    case (_currentBackpack == (_backpacksWithFirehose select 0)): {
      _currentBackpackContainer setObjectTextureGlobal [1, ""];
      if (_currentGoggles in (_masksWithFirehose select 2)) exitWith {_currentBackpackContainer setObjectTextureGlobal [3, ""];};
      _currentBackpackContainer setObjectTextureGlobal [2, ""];
      removeGoggles _caller;
      _caller addGoggles "G_AirPurifyingRespirator_01_F";
    };

    case (_currentBackpack == (_backpacksWithFirehose select 1)): {
      if (_currentGoggles in (_masksWithFirehose select 2)) exitWith {_currentBackpackContainer setObjectTextureGlobal [2, ""];};
      _currentBackpackContainer setObjectTextureGlobal [1, ""];
    };
  };
};

//Apagar suministro de oxígeno.
_currentBackpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
[_caller, "quick_view", "%1 desactivo el suministro de oxígeno", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
