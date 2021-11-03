
/********************************************************************************|
|                            FUNCIONES - "AERONAVES"                             |
|********************************************************************************/

class Planes {
	class eventHandlerPlanes {
		file = "\FCLA_Effects\Planes\functions\CBA_Eventhandlers\fn_eventHandler.sqf";
		postInit = 1;
	};

	class enginePlanes {file = "\FCLA_Effects\Planes\functions\BIS_Eventhandlers\fn_Engine.sqf";};

	class groundSmokePlanes {file = "\FCLA_Effects\Planes\functions\fn_groundSmoke.sqf";};
	class spawnSmokeEffectPlanes {file = "\FCLA_Effects\Planes\functions\fn_spawnSmokeEffect.sqf";};
};
