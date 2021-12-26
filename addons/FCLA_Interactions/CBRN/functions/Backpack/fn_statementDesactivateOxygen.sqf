
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Desactiva el oxígeno de la mochila.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player"];
_currentBackpack = backpack _player;
_backpackContainer = backpackContainer _player;
_backpacksWithFirehose = ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];
_remainingBackpackOxygen = _backpackContainer getVariable ["FCLA_Backpack_Oxygen", FCLA_CBRN_Initial_Backpack_Oxygen];



//Si la mochila se quedo sin oxígeno.
if (_remainingBackpackOxygen <= 0) exitWith {
  _backpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
  [_player, "quick_view", "%1 se quedo sin suministro de oxígeno", [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
};


//Quitar manguera.
[_player, "FCLA_Night_Vision_Switch", "playActionNow"] call FCLA_Common_fnc_playAnimation;
if (_currentBackpack in _backpacksWithFirehose) then {
  switch (true) do {
    case (_currentBackpack == (_backpacksWithFirehose select 0)): {
      _backpackContainer setObjectTextureGlobal [1, ""];
      _backpackContainer setObjectTextureGlobal [2, ""];
      _backpackContainer setObjectTextureGlobal [3, ""];
    };

    case (_currentBackpack == (_backpacksWithFirehose select 1)): {
      _backpackContainer setObjectTextureGlobal [1, ""];
      _backpackContainer setObjectTextureGlobal [2, ""];
    };
  };
};


//Detener consumo de oxígeno.
_backpackContainer setVariable ["FCLA_Backpack_Oxygen_Activated", nil, true];
[_player, "quick_view", "%1 desactivo el suministro de oxígeno", [name _player]] call ACE_Medical_Treatment_fnc_addToLog;
