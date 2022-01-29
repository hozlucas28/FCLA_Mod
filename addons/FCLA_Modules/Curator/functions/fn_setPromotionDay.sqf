
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Crea un módulo para modificar el addon option: ¿Día de ascensos? - FCLA Interacciones.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

["FCLA", "Ascensos", {
  _defaultValue = if (isNil "FCLA_isPromotionDay") then {1;} else {
    if (FCLA_isPromotionDay) then {0;} else {1;};
  };
  if (FCLA_Mission_Type != "Training") exitWith {["¡SE REQUIERE ESTAR EN UN MAPA DE ENTRENAMIENTO!"] call ZEN_Common_fnc_showMessage;};


  ["ASCENSOS",
	 [
    ["TOOLBOX", ["¿Día de ascensos?", "Al activarse:\n• Los loadouts seran remplazados por un uniforme formal.\n• Se podran utilizar las acciones relacionadas con los ascensos.\n• Los jugadores que entren, luego de haberse activado, vestiran un uniforme formal."],
     [
      _defaultValue,
      1,
      2,
      ["Si", "No"],
      nil
     ],
     true
    ]
	 ],
   {
     (_this select 0) params ["_isPromotionDay"];
     (_this select 1) params ["_position", "_attachedObject"];
     _isPromotionDay = if (_isPromotionDay == 0) then {true;} else {false;};

     ["FCLA_isPromotionDay", _isPromotionDay] call CBA_fnc_publicVariable;
     _text = if (_isPromotionDay) then {"DÍA DE ASCENSOS ACTIVADO";} else {"DÍA DE ASCENSOS DESACTIVADO";};
     [_text] call ZEN_Common_fnc_showMessage;
   }, {}, _this] call ZEN_Dialog_fnc_Create;
}, "\FCLA_Modules\Curator\data\Elegant_Person.paa"] call ZEN_Custom_Modules_fnc_Register;
