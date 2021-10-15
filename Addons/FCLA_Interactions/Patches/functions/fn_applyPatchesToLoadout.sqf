
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_applyPatchesToLoadout

Description:
    Función que llama a las funciones: x_applyUniformPatche, x_applyHeadgearPatche
    x_applyVestPatche y x_applyBackpackPatche. Uso esclusivo para los loadouts de
    entrenamiento y addonconfig.

Arguments:
    _unit - unidad para enviar al resto de las funciones.
    _uniform - classname del uniforme.
    _headgear - classname del casco.
    _vest - classname del chaleco.
    _backpack - classname de la mochila.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit","_patche","_headgear","_uniform","_vest","_backpack"];



//Llamada a funciones.
[_unit, _patche, _uniform] call FCLA_Interactions_fnc_applyUniformPatche;
[_unit, _patche, _headgear] call FCLA_Interactions_fnc_applyHeadgearPatche;
[_unit, _patche, _vest] call FCLA_Interactions_fnc_applyVestPatche;
[_unit, _patche, _backpack] call FCLA_Interactions_fnc_applyBackpackPatche;


//Colocar parche y guardarlo en variable en la unidad.
[_unit, ""] call BIS_fnc_setUnitInsignia;
[_unit, _patche] call BIS_fnc_setUnitInsignia;
_unit setVariable ["Assigned_Patche", _patche, true];
