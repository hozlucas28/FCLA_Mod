
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna información variada de la puerta enviada como argumento.
 *
 * Arguments:
 *            0: Classname de la puerta. <ARRAY>
 *
 * Return Value:
 *               0: Classname de la animación de la puerta. <STRING>
 *
 *               1: Variable de tipo objeto que indica si la puerta esta
 *                  cerrada ó no. <STRING>
 *
 *               2: XXX. <XXX>
 *
 * Note:
 * Los valores retornados se devuelven dentro de un <ARRAY>.
 *
 * Example:
 * Utiliza la función "FCLA_Common_fnc_isDoorLocked" para guiarte.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_selectionName", "", [""], 0]];
if (_selectionName == "") exitWith {["", "", ""]};



//Listado de puertas.
_selectionInfo = [
    ["door_1", ["Door_1_rot", "BIS_Disabled_Door_1", "Door_Locked_1_rot"]],
    ["door_2", ["Door_2_rot", "BIS_Disabled_Door_2", "Door_Locked_2_rot"]],
    ["door_3", ["Door_3_rot", "BIS_Disabled_Door_3", "Door_Locked_3_rot"]],
    ["door_4", ["Door_4_rot", "BIS_Disabled_Door_4", "Door_Locked_4_rot"]],
    ["door_5", ["Door_5_rot", "BIS_Disabled_Door_5", "Door_Locked_5_rot"]],
    ["door_6", ["Door_6_rot", "BIS_Disabled_Door_6", "Door_Locked_6_rot"]],
    ["door_7", ["Door_7_rot", "BIS_Disabled_Door_7", "Door_Locked_7_rot"]],
    ["door_8", ["Door_8_rot", "BIS_Disabled_Door_8", "Door_Locked_8_rot"]],
    ["door_9", ["Door_9_rot", "BIS_Disabled_Door_9", "Door_Locked_9_rot"]],
    ["door_10", ["Door_10_rot", "BIS_Disabled_Door_10", "Door_Locked_10_rot"]],
    ["door_11", ["Door_11_rot", "BIS_Disabled_Door_11", "Door_Locked_11_rot"]],
    ["door_12", ["Door_12_rot", "BIS_Disabled_Door_12", "Door_Locked_12_rot"]],
    ["door_13", ["Door_13_rot", "BIS_Disabled_Door_13", "Door_Locked_13_rot"]],
    ["door_14", ["Door_14_rot", "BIS_Disabled_Door_14", "Door_Locked_14_rot"]],
    ["door_15", ["Door_15_rot", "BIS_Disabled_Door_15", "Door_Locked_15_rot"]],
    ["door_16", ["Door_16_rot", "BIS_Disabled_Door_16", "Door_Locked_16_rot"]],
    ["door_17", ["Door_17_rot", "BIS_Disabled_Door_17", "Door_Locked_17_rot"]],
    ["door_18", ["Door_18_rot", "BIS_Disabled_Door_18", "Door_Locked_18_rot"]],
    ["door_19", ["Door_19_rot", "BIS_Disabled_Door_19", "Door_Locked_19_rot"]],
    ["door_20", ["Door_20_rot", "BIS_Disabled_Door_20", "Door_Locked_20_rot"]],
    ["door_21", ["Door_21_rot", "BIS_Disabled_Door_21", "Door_Locked_21_rot"]],
    ["door_22", ["Door_22_rot", "BIS_Disabled_Door_22", "Door_Locked_22_rot"]],
    ["door_23", ["Door_23_rot", "BIS_Disabled_Door_23", "Door_Locked_23_rot"]],
    ["door_24", ["Door_24_rot", "BIS_Disabled_Door_24", "Door_Locked_24_rot"]],
    ["door_25", ["Door_25_rot", "BIS_Disabled_Door_25", "Door_Locked_25_rot"]],
    ["hatch_1", ["Hatch_1_rot", "", ""]],
    ["hatch_2", ["Hatch_2_rot", "", ""]],
    ["hatch_3", ["Hatch_3_rot", "", ""]],
    ["hatch_4", ["Hatch_4_rot", "", ""]],
    ["hatch_5", ["Hatch_5_rot", "", ""]],
    ["hatch_6", ["Hatch_6_rot", "", ""]],
    ["hatch_7", ["Hatch_7_rot", "", ""]],
    ["hatch_8", ["Hatch_8_rot", "", ""]],
    ["hatch_9", ["Hatch_9_rot", "", ""]],
    ["hatch_10", ["Hatch_10_rot", "", ""]]
];
[_selectionInfo, _selectionName, ["", "", ""]] call BIS_fnc_getFromPairs;
