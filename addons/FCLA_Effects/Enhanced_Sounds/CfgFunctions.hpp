
/********************************************************************************|
|                        FUNCIONES - "SONIDOS MEJORADOS"                         |
|********************************************************************************/

class Enhanced_Sounds {
	class setPlayerEventHandlersES {
		file = "\FCLA_Effects\Enhanced_Sounds\functions\CBA_EventHandlers\fn_setPlayerEventHandlers.sqf";
		postInit = 1;
	};

	class killedESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_EventHandlers\fn_Killed.sqf";};
	class hitPartESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_EventHandlers\fn_hitPart.sqf";};
	class inventoryClosedESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_EventHandlers\fn_inventoryClosed.sqf";};
	class inventoryOpenedESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_EventHandlers\fn_inventoryOpened.sqf";};
	class putESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_EventHandlers\fn_Put.sqf";};
	class takeESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_EventHandlers\fn_Take.sqf";};
};
