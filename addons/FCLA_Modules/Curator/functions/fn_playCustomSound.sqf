
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para reproducir un sonido personalizado de manera
 * tridimensional.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Reproducir sonido (personalizado)", {
  ["SONIDO (PERSONALIZADO)",
	[
   ["EDIT", "Classname del sonido",
	  [
	   "",
	   nil,
	   nil
	  ],
    false
	 ],
   ["SLIDER", ["Radio", "Determina la distancia a la que se oirá el sonido."],
    [
     100,
     5000,
     250,
     0
    ],
    false
   ]
	],
  {
    (_this select 0) params ["_soundClass", "_rad"];
    (_this select 1) params ["_position", "_attachedObject"];

    private ["_position", "_soundClass"];
    private _rad = round _rad;
    private _moduleGroup = createGroup [sideLogic, true];
    "FCLA_Module_Play_Custom_Sound" createUnit [_position, _moduleGroup, "
      this setPos _position;
      this setVariable ['FCLA_Sound_On_Loop', true, true];
      this setVariable ['FCLA_Classname_Sound', _soundClass, true];
      this setVariable ['objectArea', [_rad, _rad, 0, false, _rad], true];
      this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];
    "];
    ["SONIDO PERSONALIZADO GENERADO CON ÉXITO"] call ZEN_Common_fnc_showMessage;
  }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Sound.paa"] call ZEN_Custom_Modules_fnc_Register;
