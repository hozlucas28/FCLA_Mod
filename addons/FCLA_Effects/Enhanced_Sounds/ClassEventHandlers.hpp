
/********************************************************************************|
|            CONTROLADORES DE EVENTOS (CLASES) - "SONIDOS MEJORADOS"             |
|********************************************************************************/

["CAManBase", "Put", {_this call FCLA_Effects_fnc_putES;}, true, [], true] call CBA_fnc_addClassEventHandler;
["CAManBase", "Take", {_this call FCLA_Effects_fnc_takeES;}, true, [], true] call CBA_fnc_addClassEventHandler;
["CAManBase", "Killed", {_this spawn FCLA_Effects_fnc_killedES;}, true, [], true] call CBA_fnc_addClassEventHandler;
["CAManBase", "HitPart", {_this call FCLA_Effects_fnc_hitPartES;}, true, [], true] call CBA_fnc_addClassEventHandler;
["CAManBase", "InventoryOpened", {_this call FCLA_Effects_fnc_inventoryOpenedES;}, true, [], true] call CBA_fnc_addClassEventHandler;
["CAManBase", "InventoryClosed", {_this call FCLA_Effects_fnc_inventoryClosedES;}, true, [], true] call CBA_fnc_addClassEventHandler;
