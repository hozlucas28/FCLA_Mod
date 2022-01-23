
/********************************************************************************|
|                            FUNCIONES - "AERONAVES"                             |
|********************************************************************************/

class Planes {
	class setEventHandlerPlanes {
		file = "\FCLA_Effects\Planes\functions\CBA_EventHandlers\fn_setEventHandler.sqf";
		postInit = 1;
	};

	class enginePlanes {file = "\FCLA_Effects\Planes\functions\BIS_EventHandlers\fn_Engine.sqf";};
	class groundSmokePlanes {file = "\FCLA_Effects\Planes\functions\fn_groundSmoke.sqf";};
	class spawnSmokeEffectPlanes {file = "\FCLA_Effects\Planes\functions\fn_spawnSmokeEffect.sqf";};
};
