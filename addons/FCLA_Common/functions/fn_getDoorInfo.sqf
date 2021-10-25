
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Retorna información variada de la puerta enviada como argumento.
 *
 * Argument:
 *            0: Classname de la puerta. <ARRAY>
 *
 * Return Value:
 *               0: Classname de la animación de la puerta. <STRING>
 *               1: Variable de tipo objeto asignada a la puerta. Indica si la puerta esta cerrada ó no. <STRING>
 *
 * Note:
 * Los valores retornados se devuelven dentro de un "ARRAY".
 *
 * Example:
 * ["door_1"] call FCLA_Common_fnc_getDoorInfo;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variable de referencia.
params [["_selectionName", "", [""], 0]];
if (_selectionName == "") exitWith {["", ""]};



//Listado de classnames de puertas, animaciones y variables tipo objeto.
_selectionInfo = [
                  ["door_1", ["Door_1_rot", "BIS_Disabled_Door_1"]],
                  ["door_2", ["Door_2_rot", "BIS_Disabled_Door_2"]],
                  ["door_3", ["Door_3_rot", "BIS_Disabled_Door_3"]],
                  ["door_4", ["Door_4_rot", "BIS_Disabled_Door_4"]],
                  ["door_5", ["Door_5_rot", "BIS_Disabled_Door_5"]],
                  ["door_6", ["Door_6_rot", "BIS_Disabled_Door_6"]],
                  ["door_7", ["Door_7_rot", "BIS_Disabled_Door_7"]],
                  ["door_8", ["Door_8_rot", "BIS_Disabled_Door_8"]],
                  ["door_9", ["Door_9_rot", "BIS_Disabled_Door_9"]],
                  ["door_10", ["Door_10_rot", "BIS_Disabled_Door_10"]],
                  ["door_11", ["Door_11_rot", "BIS_Disabled_Door_11"]],
                  ["door_12", ["Door_12_rot", "BIS_Disabled_Door_12"]],
                  ["door_13", ["Door_13_rot", "BIS_Disabled_Door_13"]],
                  ["door_14", ["Door_14_rot", "BIS_Disabled_Door_14"]],
                  ["door_15", ["Door_15_rot", "BIS_Disabled_Door_15"]],
                  ["door_16", ["Door_16_rot", "BIS_Disabled_Door_16"]],
                  ["door_17", ["Door_17_rot", "BIS_Disabled_Door_17"]],
                  ["door_18", ["Door_18_rot", "BIS_Disabled_Door_18"]],
                  ["door_19", ["Door_19_rot", "BIS_Disabled_Door_19"]],
                  ["door_20", ["Door_20_rot", "BIS_Disabled_Door_20"]],
                  ["door_21", ["Door_21_rot", "BIS_Disabled_Door_21"]],
                  ["door_22", ["Door_22_rot", "BIS_Disabled_Door_22"]],
                  ["door_23", ["Door_23_rot", "BIS_Disabled_Door_23"]],
                  ["door_24", ["Door_24_rot", "BIS_Disabled_Door_24"]],
                  ["door_25", ["Door_25_rot", "BIS_Disabled_Door_25"]],
                  ["hatch_1", ["Hatch_1_rot", ""]],
                  ["hatch_2", ["Hatch_2_rot", ""]],
                  ["hatch_3", ["Hatch_3_rot", ""]],
                  ["hatch_4", ["Hatch_4_rot", ""]],
                  ["hatch_5", ["Hatch_5_rot", ""]],
                  ["hatch_6", ["Hatch_6_rot", ""]],
                  ["hatch_7", ["Hatch_7_rot", ""]],
                  ["hatch_8", ["Hatch_8_rot", ""]],
                  ["hatch_9", ["Hatch_9_rot", ""]],
                  ["hatch_10", ["Hatch_10_rot", ""]]
                 ];

[_selectionInfo, _selectionName, ["", "", ""]] call BIS_fnc_getFromPairs;
