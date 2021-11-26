
/********************************************************************************|
|                        FUNCIONES - "SONIDOS MEJORADOS"                         |
|********************************************************************************/

class Enhanced_Sounds {
	class playerEventHandlersES {
		file = "\FCLA_Effects\Enhanced_Sounds\functions\CBA_Eventhandlers\fn_playerEventHandlers.sqf";
		postInit = 1;
	};

	class killedESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_Eventhandlers\fn_Killed.sqf";};
	class hitPartESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_Eventhandlers\fn_hitPart.sqf";};
	class inventoryClosedESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_Eventhandlers\fn_inventoryClosed.sqf";};
	class inventoryOpenedESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_Eventhandlers\fn_inventoryOpened.sqf";};
	class putESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_Eventhandlers\fn_Put.sqf";};
	class takeESEH {file = "\FCLA_Effects\Enhanced_Sounds\functions\BIS_Eventhandlers\fn_Take.sqf";};
};
