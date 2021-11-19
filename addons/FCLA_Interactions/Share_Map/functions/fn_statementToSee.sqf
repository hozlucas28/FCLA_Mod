
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



//Mostrar mapa.
openMap true;
_player linkItem (((getUnitLoadout _target) select 9) select 0);
[["Mapa de:", 1.25], [name _target, 1, [0.345, 0.839, 0.553, 1]], true] call CBA_fnc_Notify;


//Reproducir sonido.
_randomSound = selectRandom ["FCLA_Open_Inventory_1", "FCLA_Open_Inventory_2", "FCLA_Open_Inventory_3", "FCLA_Open_Inventory_4"];
playsound _randomSound;


//Ocultar mapa.
[{
  params ["_target", "_player"];
  _inVehicle = isNull objectParent _player;
  _isNotOnMap = !visibleMap;
  _areNotNear = _target distance _player > 2;
  _isNotAlive = !alive _target;
  _areSwimming = ([_target] call ACE_Common_fnc_isSwimming) || ([_player] call ACE_Common_fnc_isSwimming);
  _isHandcuffed = _target getVariable ["ACE_Captives_isHandcuffed", false];
  _isNotSharingMap = !(_target getVariable ["FCLA_Sharing_Map", false]);
  (!FCLA_Share_Map_Allowed) || (_inVehicle) || (_isNotOnMap) || (_areNotNear) || (_isNotAlive) || (_areSwimming) || (_isHandcuffed) || (_isNotSharingMap);
}, {
  params ["_target", "_player"];
  _areNotNear = _target distance _player > 2;
  _isNotSharingMap = !(_target getVariable ["FCLA_Sharing_Map", false]);

  switch (true) do {
    case (_areNotNear): {[[(name _target) + ":", 1.25], ["Se ha alejado demasiado.", 1, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
    case (_isNotSharingMap): {[[(name _target) + ":", 1.25], ["Dejo de compartir su mapa.", 1, [0.839, 0.345, 0.345, 1]], true] call CBA_fnc_Notify;};
    default {[[""], true] call CBA_fnc_Notify;};
  };

  openMap false;
  [_player, ((getUnitLoadout _player) select 9) select 0, "MAP"] call CBA_fnc_consumeItem;
}, [_target, _player]] call CBA_fnc_waitUntilAndExecute;
