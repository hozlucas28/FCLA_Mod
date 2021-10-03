
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_desactivateOxygenCBRN

Description:
    Apaga el suministro de oxígeno.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_caller"];
_currentGoggles = goggles _caller;
_currentBackpack = backpack _caller;
_currentBackpackContainer = backpackContainer _caller;
_arrayOfBackpacksWithFirehose = ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];
_arrayOfMasksWithFirehose = ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_RegulatorMask_F"];



//Ocultar manguera.
_isNotPlayingAnimation = !(_caller getVariable ["FCLA_Playing_Animation", false]);
if (_isNotPlayingAnimation) then {[_caller, "FCLA_Animation_Night_Vision_Switch", "playActionNow"] spawn FCLA_Development_fnc_playAnimation;};
if ((_currentGoggles in _arrayOfMasksWithFirehose) && (_currentBackpack in _arrayOfBackpacksWithFirehose)) then {
  switch (true) do {
    case (_currentBackpack == (_arrayOfBackpacksWithFirehose select 0)): {
      _currentBackpackContainer setObjectTextureGlobal [1, ""];
      if (_currentGoggles in (_arrayOfMasksWithFirehose select 2)) exitWith {_currentBackpackContainer setObjectTextureGlobal [3, ""];};
      _currentBackpackContainer setObjectTextureGlobal [2, ""];
      removeGoggles _caller;
      _caller addGoggles "G_AirPurifyingRespirator_01_F";
    };

    case (_currentBackpack == (_arrayOfBackpacksWithFirehose select 1)): {
      if (_currentGoggles in (_arrayOfMasksWithFirehose select 2)) exitWith {_currentBackpackContainer setObjectTextureGlobal [2, ""];};
      _currentBackpackContainer setObjectTextureGlobal [1, ""];
    };
  };
};

//Apagar suministro de oxígeno.
_currentBackpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
[_caller, "quick_view", "%1 desactivo el suministro de oxígeno", [name _caller]] call ACE_Medical_Treatment_fnc_addToLog;
