
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Obliga a la unidad a realizar la animacion 'Radio en mano'.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", ["_currentRadio", objNull]];



//Convertir radio actual al formato correcto.
_currentRadio = if (_currentRadio isEqualType "") then {(_currentRadio splitString "_") select 1;} else {"FCLA_Radio_h189";};


_currentWeapon = currentWeapon _unit;
switch (true) do {
  case (_currentRadio == "fadak"): {
    _attachPos = if (_currentWeapon == "") then {[-0.03, -0.09, 0.01];} else {[-0.04, -0.04, 0.05];};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[0.956, -0.776, 0.331], [-0.188, -0.165, 0.936]];} else {[[0.956, -0.776, 0.331], [-0.188, -0.165, 0.936]];};
    _radioSimpleObj = createSimpleObject ["task_force_radio_items\models\tfr_fadak.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [{!((_this select 0) getVariable ["FCLA_Transmitting", false])}, {deleteVehicle (_this select 1);}, [_unit, _radioSimpleObj]] call CBA_fnc_waitUntilAndExecute;
  };

  case (_currentRadio == "anprc148jem"): {
    _attachPos = if (_currentWeapon == "") then {[-0.1, -0.09, 0.06];} else {[-0.03, -0.01, 0.12];};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[-0.9, 0.9, 0], [0.6, 0.1, 0.4]];} else {[[0.956, -0.976, 0.231], [-0.288, -0.465, 0.136]];};
    _radioSimpleObj = createSimpleObject ["task_force_radio_items\models\tfr_anprc148.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [{!((_this select 0) getVariable ["FCLA_Transmitting", false])}, {deleteVehicle (_this select 1);}, [_unit, _radioSimpleObj]] call CBA_fnc_waitUntilAndExecute;
  };

  case (_currentRadio == "anprc152"): {
    _attachPos = if (_currentWeapon == "") then {[0.02, -0.04, 0];} else {[-0.01, -0.05, 0];};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[0.956, -0.176, 0.231], [-0.288, -0.465, 0.836]];} else {[[0.656, -0.876, 0.231], [-0.288, -0.465, 1.236]];};
    _radioSimpleObj = createSimpleObject ["task_force_radio_items\models\tfr_anprc152.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [{!((_this select 0) getVariable ["FCLA_Transmitting", false])}, {deleteVehicle (_this select 1);}, [_unit, _radioSimpleObj]] call CBA_fnc_waitUntilAndExecute;

  };

  case (_currentRadio == "anprc154"): {
    _attachPos = if (_currentWeapon == "") then {[0, -0.04, 0];} else {[-0.02, -0.04, 0];};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[0.956, -0.176, 0.231], [-0.288, -0.465, 0.836]];} else {[[0.656, -0.876, 0.231], [-0.288, -0.465, 1.236]];};
    _radioSimpleObj = createSimpleObject ["task_force_radio_items\models\tfr_anprc154.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [{!((_this select 0) getVariable ["FCLA_Transmitting", false])}, {deleteVehicle (_this select 1);}, [_unit, _radioSimpleObj]] call CBA_fnc_waitUntilAndExecute;
  };

  case (_currentRadio == "pnr1000a"): {
    _attachPos = if (_currentWeapon == "") then {[0, -0.07, -0.05];} else {[-0.02, -0.04, -0.05];};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[0.956, -0.776, 0.331], [-0.188, -0.165, 0.936]]} else {[[0.956, -0.776, 0.331], [-0.188, -0.165, 0.936]];};
    _radioSimpleObj = createSimpleObject ["task_force_radio_items\models\tfr_PNR1000a.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [{!((_this select 0) getVariable ["FCLA_Transmitting", false])}, {deleteVehicle (_this select 1);}, [_unit, _radioSimpleObj]] call CBA_fnc_waitUntilAndExecute;
  };

  case (_currentRadio == "rf7800str"): {
    _attachPos = if (_currentWeapon == "") then {[0, -0.04, -0.05];} else {[-0.01, 0, 0.01]};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[0.956, -0.776, 0.331], [-0.188, -0.165, 0.936]];} else {[[0.956, -0.776, 0.331], [-0.188, -0.165, 0.936]];};
    _radioSimpleObj = createSimpleObject ["task_force_radio_items\models\tfr_RF7800.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
    [{!((_this select 0) getVariable ["FCLA_Transmitting", false])}, {deleteVehicle (_this select 1);}, [_unit, _radioSimpleObj]] call CBA_fnc_waitUntilAndExecute;
  };

  default {
    _attachPos = if (_currentWeapon == "") then {[0, -0.04, -0.01];} else {[-0.01, -0.04, 0];};
    _vectorDirAndUp = if (_currentWeapon == "") then {[[0.334, 0.788, -0.516], [0.917, -0.398, -0.014]];} else {[[1.434, 0.588, -1.916], [0.917, -0.298, -0.024]];};
    _radioSimpleObj = createSimpleObject ["FCLA_Immersions\TFAR_Animations\data\FCLA_Radio_h189.p3d", [0, 0, 0], false];
    _radioSimpleObj attachto [_unit, _attachPos, "lefthand"];
    _radioSimpleObj setVectorDirAndUp _vectorDirAndUp;
    _unit spawn FCLA_Immersions_fnc_waitUntilTFAR;
    _unit setVariable ["FCLA_TFAR_Animation_Radio", _radioSimpleObj, true];
    [_unit, "FCLA_Animation_TFAR_onHand"] call ACE_Common_fnc_doGesture;
    //[_unit, "FCLA_Animation_TFAR_onHand", "playActionNow"] call FCLA_Common_fnc_playAnimation;
  };
};
