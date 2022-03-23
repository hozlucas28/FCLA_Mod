
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea areas contaminadas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
if ((is3DEN) || (isNull _module) || (!_isActivated)) exitWith {};



//Verificar argumentos.
_moduleArea = _module getVariable ["objectArea", [0, 0, 0, false, -1]];
_threatLevel = _module getVariable ["FCLA_Threat_Level", 0];
_contaminationMaxRad = if ((selectMax [_moduleArea select 0, _moduleArea select 1]) <= 0) then {worldSize * 2;} else {selectMax [_moduleArea select 0, _moduleArea select 1];};
if (_threatLevel <= 0) exitWith {["FCLA_Module_CBRN_Contaminated_Zone", "- MODULO: ZONA CONTAMINADA (CBRN)", "¡Error! El/Un modulo 'Area contaminada (CBRN)' no se pudo inicializar con exito."] call FCLA_Common_fnc_errorMessage;};



//Crear area contaminada.
[{
  _args params ["_module", "_moduleArea", "_contaminationMaxRad", "_quarterOfContaminationMaxRad", "_threatLevel"];
  _isNotAlive = !alive _module;
  _playersInArea = allPlayers select {_x inArea [_module, _moduleArea select 0, _moduleArea select 1, _moduleArea select 2, _moduleArea select 3, _moduleArea select 4]};
  _playersInMaxRad = allPlayers select {_x inArea [_module, _contaminationMaxRad + _quarterOfContaminationMaxRad, _contaminationMaxRad + _quarterOfContaminationMaxRad, _moduleArea select 2, _moduleArea select 3, -1]};
  _playersNotInMaxRad = allPlayers select {!(_x in _playersInMaxRad)};
  _compatibleOxygenMasks = if (isNil "FCLA_CBRN_Compatible_Oxygen_Masks") then {["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"];} else {FCLA_CBRN_Compatible_Oxygen_Masks;};
  _compatibleNRBQUniforms = if (isNil "FCLA_CBRN_Compatible_NRBQ_Uniforms") then {["U_C_CBRN_Suit_01_Blue_F", "U_C_CBRN_Suit_01_White_F", "U_B_CBRN_Suit_01_Wdl_F", "U_B_CBRN_Suit_01_MTP_F", "U_B_CBRN_Suit_01_Tropic_F", "U_I_CBRN_Suit_01_AAF_F", "U_I_E_CBRN_Suit_01_EAF_F"];} else {FCLA_CBRN_Compatible_NRBQ_Uniforms;};
  _compatibleBackpacksWithOxygen = if (isNil "FCLA_CBRN_Compatible_Backpacks_With_Oxygen") then {["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"];} else {FCLA_CBRN_Compatible_Backpacks_With_Oxygen;};
  if (_isNotAlive) exitWith {
    {
      _contaminatedAreas = _x getVariable ["FCLA_Contaminated_Areas", []];
      if (_module in _contaminatedAreas) then {
        _contaminatedAreas = _contaminatedAreas - [_module];
        if (_contaminatedAreas isEqualTo []) then {
          _x setVariable ["FCLA_Contaminated_Areas", nil, true];
        } else {
          _x setVariable ["FCLA_Contaminated_Areas", _contaminatedAreas, true];
        };
      };
    } forEach (_playersInArea + _playersNotInMaxRad);
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};


  {
    _isNotHidden = !isObjectHidden _x;
    _isVulnerable = isDamageAllowed _x;
    _backpackContainer = backpackContainer _x;
    _hasCompatibleOxygenMask = (goggles _x) in _compatibleOxygenMasks;
    _hasCompatibleNRBQUniform = (uniform _x) in _compatibleNRBQUniforms;
    _isBackpackOxygenActivated = _backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false];
    _hasCompatibleBackpackWithOxygen = (backpack _x) in _compatibleBackpacksWithOxygen;

    _hasNotRequiredEquipment = switch (_threatLevel) do {
      case 1: {!_hasCompatibleOxygenMask;};
      case 2: {(!_hasCompatibleOxygenMask) || (!_hasCompatibleBackpackWithOxygen) || (!_isBackpackOxygenActivated);};
      case 3: {(!_hasCompatibleOxygenMask) || (!_hasCompatibleBackpackWithOxygen) || (!_isBackpackOxygenActivated) || (!_hasCompatibleNRBQUniform);};
      default {true;};
    };

    _levelOfInjury = (linearConversion [_contaminationMaxRad, _quarterOfContaminationMaxRad, _x distance _module, 0, _threatLevel * 4, true]) / 25;
    if ((_isNotHidden) && (_isVulnerable) && (_hasNotRequiredEquipment) && (_levelOfInjury > 0)) then {
      [_player, _levelOfInjury] call ACE_Medical_fnc_adjustPainLevel;
      ["FCLA_Common_Execute", [ACE_Medical_fnc_addDamageToUnit, [_x, _levelOfInjury, "Body", selectRandom ["burn", "unknown"], objNull, [], true], false], _x] call CBA_fnc_targetEvent;
      ["FCLA_Common_Execute", [ACE_Medical_Engine_fnc_updateDamageEffects, [_x], false], _x] call CBA_fnc_targetEvent;
      if (!(_x in _playersAffected)) then {_playersAffected pushBack _x;};
    };
  } forEach _playersInArea;

  {
    _contaminatedAreas = _x getVariable ["FCLA_Contaminated_Areas", []];
    if (!(_module in _contaminatedAreas)) then {
      _contaminatedAreas pushBack _module;
      _x setVariable ["FCLA_Contaminated_Areas", _contaminatedAreas, true];
    };
  } forEach _playersInMaxRad;

  {
    _contaminatedAreas = _x getVariable ["FCLA_Contaminated_Areas", []];
    if (_module in _contaminatedAreas) then {
      _contaminatedAreas = _contaminatedAreas - [_module];
      if (_contaminatedAreas isEqualTo []) then {
        _x setVariable ["FCLA_Contaminated_Areas", nil, true];
      } else {
        _x setVariable ["FCLA_Contaminated_Areas", _contaminatedAreas, true];
      };
    };
  } forEach _playersNotInMaxRad;
}, 1, [_module, _moduleArea, _contaminationMaxRad, (25 * _contaminationMaxRad) / 100, _threatLevel]] call CBA_fnc_addPerFrameHandler;


//Guardar atributos.
_module setVariable ["FCLA_Contamination_Radius", _contaminationMaxRad, true];
