
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para modificar el alcance de las radios de onda corta y larga.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Modificar alcance (TFAR)", {
  _defaultValue = missionNamespace getVariable ["FCLA_TFAR_Multiplicator", 1];
  ["ALCANCE DE LAS RADIOS",
	 [
    ["SLIDER", ["Multiplicador", "Multiplica el alcance que tienen todas las radios de onda corta y larga, incluyendo vehículos.\n• Nota: el multiplicador de alcance, que trae por defecto el mod: Task Force Radio, es 1."],
     [
      0,
      50,
      _defaultValue,
      0
     ],
     true
    ]
	 ],
   {
     (_this select 0) params ["_multiplier"];
     _multiplier = [_multiplier, 0] call BIS_fnc_cutDecimals;

     ["FCLA_Change_Radio_Range", [allUnits + vehicles, _multiplier]] call CBA_fnc_globalEventJIP;
     ["ALCANCE DE LAS RADIOS MULTIPLICADO: " + str _multiplier + "X"] call zen_common_fnc_showMessage;
   }, {}, nil] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Radio.paa"] call ZEN_Custom_Modules_fnc_Register;
