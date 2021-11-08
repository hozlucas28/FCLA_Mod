
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Comparte el mapa.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_player"];



//Compartir mapa.
playSound "FCLA_Unfold_Map";
_player setVariable ["FCLA_Sharing_Map", true, true];
[["Compartiendo mapa:", 1.25], ["| √ |", 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;


//Dejar de compartir.
[{
  if () exitWith {
    _this select 0 setVariable ["FCLA_Sharing_Map", nil, true];
    [["Compartiendo mapa:", 1.25], ["| X |", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };



}, 0.5, _player] call CBA_fnc_addPerFrameHandler;
