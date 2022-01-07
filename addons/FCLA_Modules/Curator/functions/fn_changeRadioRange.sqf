
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
     _module = createAgent ["FCLA_Module_Radio_Range", _this select 1, [], 0, "CAN_COLLIDE"];
     _module setVariable ["FCLA_Multiplier", round _multiplier, true];
     ["ALCANCE DE LAS RADIOS MULTIPLICADO: " + str (round _multiplier) + "X"] call ZEN_Common_fnc_showMessage;
   }, {}, _this select 0] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Radio.paa"] call ZEN_Custom_Modules_fnc_Register;
