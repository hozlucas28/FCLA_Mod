
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el mapa que esta compartiendo la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_target", "_player"];
_map = ((getUnitLoadout _target) select 9) select 0;



//Mostrar mapa.
openMap true;
_player linkItem _map;
[["Mapa de:", 1.25], [name _target, 1.25, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;


//Ocultar.
[{
  _args params ["_target", "_player"];
  if () exitWith {
    openMap false;
    [_player, ((getUnitLoadout _target) select 9) select 0, "MAP"] call CBA_fnc_consumeItem;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };



}, 0.5, [_target, _player]] call CBA_fnc_addPerFrameHandler;













[_player, _target] spawn {
  params ["_player", "_target"];
  waituntil {!visibleMap || !alive _target || (([_player, _target] call CBA_fnc_getDistance) > 3) || !(_target getVariable "Share_Map_Status")};

  if (!(alive _target) || !(_target getVariable "Share_Map_Status")) exitWith {[[name _target + ":", 1.25], ["Dejo de compartir su mapa.", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
  if (([_player, _target] call CBA_fnc_getDistance) > 3) exitWith {[[name _target + ":", 1.25], ["Se ha alejado demasiado.", 1.25, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
};
