
/********************************************************************************|
|                 CONTROLADORES DE EVENTOS (JUGADORES) - "CBRN"                  |
|********************************************************************************/

//Desactiva el detector químico.
if (hasInterface) then {
  ["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    _compatibleChemicalDetectors = missionNamespace getVariable ["FCLA_CBRN_Compatible_Chemical_Detectors", ["ChemicalDetector_01_watch_F", "tf_microdagr"]];
    _isChemicalDetectorDesactivated = !(_unit getVariable ["FCLA_Chemical_Detector_Activated", false]);
    _haveCompatibleChemicalDetector = ({[_unit, _x] call BIS_fnc_hasItem} count _compatibleChemicalDetectors) >= 1;
    if ((_isChemicalDetectorDesactivated) || (_haveCompatibleChemicalDetector)) exitWith {};
    [_unit] spawn FCLA_Interactions_fnc_statementTurnOffChemicalDetectorCBRN;
  }, false] call CBA_fnc_addPlayerEventHandler;
};
