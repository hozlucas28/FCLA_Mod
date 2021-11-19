
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
[{
  if (!visibleMap) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
  if (((isGamePaused) || (!isGameFocused)) && !(isMultiplayer)) exitWith {};
  hintSilent parseText format ["<t size='1.5'>Mapa de:</t><br/><t size='1.25' color='#FF58D68D'>%1</t>", name (_this select 0)];
}, 0.5, _target] call CBA_fnc_addPerFrameHandler;


//Reproducir sonido.
_randomSound = selectRandom ["FCLA_Open_Inventory_1", "FCLA_Open_Inventory_2", "FCLA_Open_Inventory_3", "FCLA_Open_Inventory_4"];
playsound _randomSound;


//Ocultar mapa.
[{
  params ["_target", "_player"];
  _inVehicle = !isNull objectParent _player;
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
    case (_areNotNear): {hintSilent parseText format ["<t size='1.5'>%1:</t><br/><t size='1.25' color='#FFD65858'>Se ha alejado demasiado.</t>", name _target];};
    case (_isNotSharingMap): {hintSilent parseText format ["<t size='1.5'>%1:</t><br/><t size='1.25' color='#FFD65858'>Dejo de compartir su mapa.</t>", name _target];};
    default {hintSilent "";};
  };

  openMap false;
  [_player, ((getUnitLoadout _player) select 9) select 0, "MAP"] call CBA_fnc_consumeItem;
}, [_target, _player]] call CBA_fnc_waitUntilAndExecute;
