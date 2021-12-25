
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea áreas contaminadas.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_module", objNull, [objNull], 0],
        ["_synchronizedObjects", [], [[]], []],
        ["_isActivated", true, [true], 0]
       ];
_forceDeactivation = _module getvariable ["FCLA_Force_Deactivation", false];
if ((is3DEN) || (isNull _module) || (!_isActivated) || (_forceDeactivation)) exitWith {};



//Verificar argumentos.
_moduleArea = _module getvariable ["objectArea", [0, 0, 0, false, -1]];
_threatLevel = _module getVariable ["FCLA_Threat_Level", 0];
_contaminationRad = if ((selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4]) <= -1) then {worldSize * 2;} else {selectMax [_moduleArea select 0, _moduleArea select 1, _moduleArea select 4];};
_contaminationHalfRad = _contaminationRad / 2;
if (_threatLevel <= 0) exitWith {["¡Error! El/Un módulo 'Área contaminada (CBRN)' no se pudo inicializar con éxito."] call BIS_fnc_error;};



//Crear área contaminada.
[{
  _args params ["_module", "_contaminationRad", "_contaminationHalfRad", "_threatLevel"];
  _isNotAlive = !alive _module;
  _playersInArea = allPlayers select {_x inArea [_module, _contaminationRad, _contaminationRad, 0, false, _contaminationRad]};
  _compatibleOxygenMasks = missionNamespace getVariable ["FCLA_CBRN_Compatible_Oxygen_Masks", ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F", "G_AirPurifyingRespirator_02_sand_F", "G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_RegulatorMask_F"]];
  _compatibleNRBQUniforms = missionNamespace getVariable ["FCLA_CBRN_Compatible_NRBQ_Uniforms", ["U_C_CBRN_Suit_01_Blue_F", "U_C_CBRN_Suit_01_White_F", "U_B_CBRN_Suit_01_Wdl_F", "U_B_CBRN_Suit_01_MTP_F", "U_B_CBRN_Suit_01_Tropic_F", "U_I_CBRN_Suit_01_AAF_F", "U_I_E_CBRN_Suit_01_EAF_F"]];
  _compatibleBackpacksWithOxygen = missionNamespace getVariable ["FCLA_CBRN_Compatible_Backpacks_With_Oxygen", ["B_CombinationUnitRespirator_01_F", "B_SCBA_01_F"]];
  if (_isNotAlive) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};


  {
    _backpackContainer = backpackContainer _x;
    _hasCompatibleOxygenMask = (goggles _x) in _compatibleOxygenMasks;
    _hasCompatibleNRBQUniform = (uniform _x) in _compatibleNRBQUniforms;
    _isBackpackOxygenActivated = _backpackContainer getVariable ["FCLA_Backpack_Oxygen_Activated", false];
    _hasCompatibleBackpackWithOxygen = (backpack _x) in _compatibleBackpacksWithOxygen;

    _hasRequiredEquipment = switch (_threatLevel) do {
      case 1: {_hasCompatibleOxygenMask;};
      case 2: {(_hasCompatibleOxygenMask) && (_hasCompatibleBackpackWithOxygen) && (_isBackpackOxygenActivated);};
      case 3: {(_hasCompatibleOxygenMask) && (_hasCompatibleBackpackWithOxygen) && (_isBackpackOxygenActivated) && (_hasCompatibleNRBQUniform);};
      default {false;};
    };
    if (_hasRequiredEquipment) exitWith {};

    _levelOfInjury = linearConversion [_contaminationRad, _contaminationHalfRad, _x distance _module, _threatLevel * 2, 0, true];
    ["FCLA_Common_Execute", [ACE_Medical_fnc_addDamageToUnit, [_x, _levelOfInjury, "Body", "unknown", objNull, [], false]], _x] call CBA_fnc_targetEvent;
    ["FCLA_Common_Execute", [ACE_Medical_Engine_fnc_updateDamageEffects, [_x]], _x] call CBA_fnc_targetEvent;
  } forEach _playersInArea;
}, 0.5, [_module, _contaminationRad, _contaminationHalfRad, _threatLevel]] call CBA_fnc_addPerFrameHandler;


//COMPATIBILIDAD CON LAS FUNCIONES CBRN
