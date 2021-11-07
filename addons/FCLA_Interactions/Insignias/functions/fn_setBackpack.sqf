
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Coloca la mochila con la insignia a la unidad.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit", "_insignia"];
_getPlatoon = [_insignia, (_insignia find "_") + 1, 100] call CBA_fnc_substring;
_platoon = if ((_getPlatoon == "Unassigned") || (_getPlatoon == "Common")) then {"FCLA"} else {_getPlatoon};
_currentBackpack = backpack _unit;
_itemsInBackpack = backpackItems _unit;



//Listado de las mochilas con insignias.
_commonAssaultPacksWithNameTag = ["B_AssaultPack_Kerry", "B_AssaultPack_FCLA_Green", "B_AssaultPack_Takana_Green", "B_AssaultPack_Jaguar_Green", "B_AssaultPack_Condor_Green", "B_AssaultPack_Salamandra_Green", "B_AssaultPack_Anaconda_Green", "B_AssaultPack_Quetzal_Green"];
_MTPAssaultPacks = ["B_AssaultPack_mcamo", "B_AssaultPack_Medic_MTP"];
_greenAssaultPacks = ["B_AssaultPack_rgr", "B_AssaultPack_Medic_Green"];
_tropicalAssaultPacks = ["B_AssaultPack_tna_F", "B_AssaultPack_Medic_Tropical"];
_coyoteAssaultPacks = ["B_AssaultPack_cbr", "B_AssaultPack_Medic_Coyote"];
_MTPKitbag = ["B_Kitbag_mcamo", "B_Kitbag_Medic_MTP"];
_greenKitbag = ["B_Kitbag_rgr", "B_Kitbag_Medic_Green"];
_sapKitbag = ["B_Kitbag_sgg", "B_Kitbag_Medic_Sap"];
_coyoteKitbag = ["B_Kitbag_cbr", "B_Kitbag_Medic_Coyote"];
_toastedKitbag = ["B_Kitbag_tan", "B_Kitbag_Medic_Toasted"];
_digitalKitbag = ["B_Kitbag_Digital", "B_Kitbag_Medic_Digital"];
_urbanV2AssaultPacks = ["B_AssaultPack_Urban_v2", "B_AssaultPack_Medic_Urban_v2"];
_urbanV3AssaultPacks = ["B_AssaultPack_Urban_v3", "B_AssaultPack_Medic_Urban_v3"];
_urbanV4AssaultPacks = ["B_AssaultPack_Urban_v4", "B_AssaultPack_Medic_Urban_v4"];
_urbanV1Kitbag = ["B_Kitbag_Urban_v1", "B_Kitbag_Medic_Urban_v1"];
_winterV2AssaultPacks = ["B_AssaultPack_Winter_v2", "B_AssaultPack_Medic_Winter_v2"];
_winterV3AssaultPacks = ["B_AssaultPack_Winter_v3", "B_AssaultPack_Medic_Winter_v3"];
_winterV4AssaultPacks = ["B_AssaultPack_Winter_v4", "B_AssaultPack_Medic_Winter_v4"];
_winterV1Kitbag = ["B_Kitbag_Winter_v1", "B_Kitbag_Medic_Winter_v1"];
_marineAssaultPacks = ["B_AssaultPack_Marine", "B_AssaultPack_Medic_Marine"];


//Obtener mochila con la insignia.
_backpackWithInsignia = switch (true) do {
	case (_currentBackpack in _commonAssaultPacksWithNameTag): {"B_AssaultPack_" + _platoon + "_Green"};
	case (_currentBackpack in _MTPAssaultPacks): {"B_AssaultPack_" + _platoon + "_MTP"};
	case (_currentBackpack in _greenAssaultPacks): {"B_AssaultPack_" + _platoon + "_Green"};
	case (_currentBackpack in _tropicalAssaultPacks): {"B_AssaultPack_" + _platoon + "_Tropical"};
	case (_currentBackpack in _coyoteAssaultPacks): {"B_AssaultPack_" + _platoon + "_Coyote"};
	case (_currentBackpack in _MTPKitbag): {"B_Kitbag_" + _platoon + "_MTP"};
	case (_currentBackpack in _greenKitbag): {"B_Kitbag_" + _platoon + "_Green"};
	case (_currentBackpack in _sapKitbag): {"B_Kitbag_" + _platoon + "_Sap"};
	case (_currentBackpack in _coyoteKitbag): {"B_Kitbag_" + _platoon + "_Coyote"};
	case (_currentBackpack in _toastedKitbag): {"B_Kitbag_" + _platoon + "_Toasted"};
	case (_currentBackpack in _digitalKitbag): {"B_Kitbag_" + _platoon + "_Digital"};
	case (_currentBackpack in _urbanV2AssaultPacks): {"B_AssaultPack_" + _platoon + "_Urban_v2"};
  case (_currentBackpack in _urbanV3AssaultPacks): {"B_AssaultPack_" + _platoon + "_Urban_v3"};
  case (_currentBackpack in _urbanV4AssaultPacks): {"B_AssaultPack_" + _platoon + "_Urban_v4"};
  case (_currentBackpack in _urbanV1Kitbag): {"B_Kitbag_" + _platoon + "_Urban_v1"};
  case (_currentBackpack in _winterV2AssaultPacks): {"B_AssaultPack_" + _platoon + "_Winter_v2"};
  case (_currentBackpack in _winterV3AssaultPacks): {"B_AssaultPack_" + _platoon + "_Winter_v3"};
  case (_currentBackpack in _winterV4AssaultPacks): {"B_AssaultPack_" + _platoon + "_Winter_v4"};
  case (_currentBackpack in _winterV1Kitbag): {"B_Kitbag_" + _platoon + "_Winter_v1"};
  case (_currentBackpack in _marineAssaultPacks): {"B_AssaultPack_" + _platoon + "_Marine"};
	default {""};
};


//Colocar mochila.
_unit addBackpack _backpackWithInsignia;
{_unit addItemToBackpack _x} forEach _itemsInBackpack;
