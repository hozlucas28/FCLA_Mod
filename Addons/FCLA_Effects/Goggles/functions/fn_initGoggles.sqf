
/* ----------------------------------------------------------------------------
Function: FCLA_Effects_fnc_initGoggles

Description:
    Asigna tres eventhandlers del tipo 'addPlayerEventHandler' para colocar
    overlays según el item que se tenga equipado en el slot de los anteojos.
    Estos eventhandlers se activaran cuando: se modifique el inventario,
    cambie la cámara y cuando se cambie la vista de cámara.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Al modificarse el inventario.
["loadout", {
  params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
  _newGoggles = if (count _newUnitLoadout > 0) then {_newUnitLoadout select 7;} else {"";};
  _oldGoggles = if (count _oldUnitLoadout > 0) then {_oldUnitLoadout select 7;} else {"";};
  _APROTAN = ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F"];
  _APRCSAT = ["G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F"];
  _blindfolds = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
  if (_newGoggles == _oldGoggles) exitWith {};


  switch (true) do {
    case ((goggles _unit) in _APROTAN): {
      "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
      "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_APR", "PLAIN", -1, false];
      _unit setVariable ["FCLA_Mask_Equipped", nil, true];
      [{
        if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
        _this setVariable ["FCLA_Mask_Equipped", true, true];
        [_this] spawn FCLA_Effects_fnc_breathGoggles;
      }, _unit, 0.1] call CBA_fnc_waitAndExecute;
    };

    case ((goggles _unit) in _APRCSAT): {
      "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
      "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_APR_02", "PLAIN", -1, false];
      _unit setVariable ["FCLA_Mask_Equipped", nil, true];
      [{
        if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
        _this setVariable ["FCLA_Mask_Equipped", true, true];
        [_this] spawn FCLA_Effects_fnc_breathGoggles;
      }, _unit, 0.1] call CBA_fnc_waitAndExecute;
    };

    case ((goggles _unit) == "G_RegulatorMask_F"): {
      "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
      "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_Regulator", "PLAIN", -1, true];
      _unit setVariable ["FCLA_Mask_Equipped", nil, true];
      [{
        if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
        _this setVariable ["FCLA_Mask_Equipped", true, true];
        [_this] spawn FCLA_Effects_fnc_breathGoggles;
      }, _unit, 0.1] call CBA_fnc_waitAndExecute;
    };

    case ((goggles _unit) in _blindfolds): {
      "FCLA_Goggles_secondOverlay" cutRsc ["RscBlindfold", "PLAIN", -1, true];
      _unit setVariable ["FCLA_Mask_Equipped", nil, true];
    };

    default {
      "FCLA_Goggles_firstOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
      "FCLA_Goggles_secondOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
      _unit setVariable ["FCLA_Mask_Equipped", nil, true];
    };
 };
}, true] call CBA_fnc_addPlayerEventHandler;



//Al cambiar cámara (Zeus, arsenal, etc.)
["featureCamera", {
  params ["_unit", "_newCamera"];
  _APROTAN = ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F"];
  _APRCSAT = ["G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F"];
  _blindfolds = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];
  if (!(_unit getVariable ["FCLA_Mask_Equipped", false])) exitWith {};


  if (_newCamera == "curator") then {
    "FCLA_Goggles_firstOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
    "FCLA_Goggles_secondOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
  } else {
    switch (true) do {
      case ((goggles _unit) in _APROTAN): {
        "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
        "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_APR", "PLAIN", -1, false];
        _unit setVariable ["FCLA_Mask_Equipped", nil, true];
        [{
          if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
          _this setVariable ["FCLA_Mask_Equipped", true, true];
          [_this] spawn FCLA_Effects_fnc_breathGoggles;
        }, _unit, 0.1] call CBA_fnc_waitAndExecute;
      };

      case ((goggles _unit) in _APRCSAT): {
        "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
        "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_APR_02", "PLAIN", -1, false];
        _unit setVariable ["FCLA_Mask_Equipped", nil, true];
        [{
          if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
          _this setVariable ["FCLA_Mask_Equipped", true, true];
          [_this] spawn FCLA_Effects_fnc_breathGoggles;
        }, _unit, 0.1] call CBA_fnc_waitAndExecute;
      };

      case ((goggles _unit) == "G_RegulatorMask_F"): {
        "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
        "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_Regulator", "PLAIN", -1, true];
        _unit setVariable ["FCLA_Mask_Equipped", nil, true];
        [{
          if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
          _this setVariable ["FCLA_Mask_Equipped", true, true];
          [_this] spawn FCLA_Effects_fnc_breathGoggles;
        }, _unit, 0.1] call CBA_fnc_waitAndExecute;
      };

      case ((goggles _unit) in _blindfolds): {
        "FCLA_Goggles_secondOverlay" cutRsc ["RscBlindfold", "PLAIN", -1, true];
      };
   };
  };
}, true] call CBA_fnc_addPlayerEventHandler;



//Al cambiar vista de cámara.
["cameraView", {
  params ["_unit", "_newCamera"];
  _notUsingMask = !(_unit getVariable ["FCLA_Mask_Equipped", false]);
  if (_notUsingMask) exitWith {};

  if ((_newCamera == "External") && (!_notUsingMask)) exitWith {
    "FCLA_Goggles_firstOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
    "FCLA_Goggles_secondOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
  };


  if (_newCamera == "Gunner") then {
    _currentVehicle = objectParent _unit;
    _notInVehicle = isNull (_currentVehicle);
    if (_notInVehicle) exitWith {};

    _notInImportantSeat = ((driver _currentVehicle) != _unit) && ((commander _currentVehicle) != _unit) && ((gunner _currentVehicle) != _unit);
    if (_notInImportantSeat) exitWith {};

    "FCLA_Goggles_firstOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
    "FCLA_Goggles_secondOverlay" cutRsc ["RscTitleDisplayEmpty", "PLAIN", -1, true];
  } else {
    _APROTAN = ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F"];
    _APRCSAT = ["G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F"];
    _blindfolds = ["G_Blindfold_01_black_F", "G_Blindfold_01_white_F"];

    switch (true) do {
      case ((goggles _unit) in _APROTAN): {
        "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
        "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_APR", "PLAIN", -1, false];
        _unit setVariable ["FCLA_Mask_Equipped", nil, true];
        [{
          if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
          _this setVariable ["FCLA_Mask_Equipped", true, true];
          [_this] spawn FCLA_Effects_fnc_breathGoggles;
        }, _unit, 0.1] call CBA_fnc_waitAndExecute;
      };

      case ((goggles _unit) in _APRCSAT): {
        "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
        "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_APR_02", "PLAIN", -1, false];
        _unit setVariable ["FCLA_Mask_Equipped", nil, true];
        [{
          if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
          _this setVariable ["FCLA_Mask_Equipped", true, true];
          [_this] spawn FCLA_Effects_fnc_breathGoggles;
        }, _unit, 0.1] call CBA_fnc_waitAndExecute;
      };

      case ((goggles _unit) == "G_RegulatorMask_F"): {
        "FCLA_Goggles_firstOverlay" cutRsc ["FCLA_CBRN_APR", "PLAIN", 1, true];
        "FCLA_Goggles_secondOverlay" cutRsc ["RscCBRN_Regulator", "PLAIN", -1, true];
        _unit setVariable ["FCLA_Mask_Equipped", nil, true];
        [{
          if (_this getVariable ["FCLA_Mask_Equipped", false]) exitWith {};
          _this setVariable ["FCLA_Mask_Equipped", true, true];
          [_this] spawn FCLA_Effects_fnc_breathGoggles;
        }, _unit, 0.1] call CBA_fnc_waitAndExecute;
      };

      case ((goggles _unit) in _blindfolds): {
        "FCLA_Goggles_secondOverlay" cutRsc ["RscBlindfold", "PLAIN", -1, true];
      };
   };
  };
}, true] call CBA_fnc_addPlayerEventHandler;
