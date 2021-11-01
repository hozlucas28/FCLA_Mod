
/********************************************************************************|
|                             CONFIGURACIÓN GENERAL                              |
|********************************************************************************/

class CfgPatches {
	class FCLA_Faces {
		units[] = {};
		requiredAddons[] = {"A3_Characters_F", "A3_Characters_F_Heads"};
		version = "2.0";
		author = "hozlucas28";
		authorUrl = "https://steamcommunity.com/profiles/76561198137876583/";
	};
};



/********************************************************************************|
|                                     CARAS                                      |
|********************************************************************************/

class Man;
class Custom;
class Default;
class CfgFaces {
	class Default;
	#include "\FCLA_Faces\CfgFaces.hpp"
};



/********************************************************************************|
|                                    CABEZAS                                     |
|********************************************************************************/

class CfgHeads {
	class Default_A3 {};
	class DefaultHead_A3: Default_A3{};
	class Hladas: DefaultHead_A3{};

	#include "\FCLA_Faces\CfgHeads.hpp"
};
