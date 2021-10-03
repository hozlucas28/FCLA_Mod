
/* ----------------------------------------------------------------------------
Function: FCLA_Interactions_fnc_applyBackpackPatche

Description:
    Le cambia el parche de la mochila a la unidad, si es que existe una
    variante de la misma con el parche que se envio.

Parameters:
    _unit - unidad a la que se le colocara la nueva mochila con parche.
    _backpack - classname de la mochila de la unidad enviada.
    _patche - classname del parche.

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_unit","_patche","_backpack"];
if (_backpack == "") exitWith {false};



//Items de la mochila.
_itemsInBackpack = backpackItems _unit;



//Vectores locales.
_greenAssaultBackpacks = ["B_AssaultPack_rgr","B_AssaultPack_Kerry","B_FCLA_Assaultbag_Green","B_FCLA_Assaultbag_Takana_Green","B_FCLA_Assaultbag_Jaguar_Green","B_FCLA_Assaultbag_Condor_Green","B_FCLA_Assaultbag_Salamandra_Green","B_FCLA_Assaultbag_Anaconda_Green","B_FCLA_Assaultbag_Quetzal_Green","B_FCLA_Assaultbag_Med_Green"];
_greenKitbagBackpacks = ["B_Kitbag_rgr","B_FCLA_Kitbag_Med_Green"];
_sapKitbagBackpacks = ["B_Kitbag_sgg","B_FCLA_Kitbag_Med_Sap"];
_coyoteAssaultBackpacks = ["B_AssaultPack_cbr","B_FCLA_Assaultbag_Med_Coyote"];
_coyoteKitbagBackpacks = ["B_Kitbag_cbr","B_FCLA_Kitbag_Med_Coyote"];
_toastedKitbagBackpacks = ["B_Kitbag_tan","B_FCLA_Kitbag_Med_Toasted"];
_MTPAssaultBackpacks = ["B_AssaultPack_mcamo","B_FCLA_Assaultbag_Med_MTP"];
_MTPKitbagBackpacks = ["B_Kitbag_mcamo","B_FCLA_Kitbag_Med_MTP"];
_tropicalAssaultBackpacks = ["B_AssaultPack_tna_F","B_FCLA_Assaultbag_Med_Tropical"];
_CBRNBackpacks = ["B_CombinationUnitRespirator_01_F"];
_digitalKitbagBackpacks = ["B_FCLA_Kitbag_Digital","B_FCLA_Kitbag_Med_Digital"];
_urbanOneKitbagBackpacks = ["B_FCLA_Kitbag_Urban_1","B_FCLA_Kitbag_Med_Urban_1"];
_urbanTwoAssaultBackpacks = ["B_FCLA_Assaultbag_Urban_2","B_FCLA_Assaultbag_Med_Urban_2"];
_urbanThreeAssaultBackpacks = ["B_FCLA_Assaultbag_Urban_3","B_FCLA_Assaultbag_Med_Urban_3"];
_urbanFourAssaultBackpacks = ["B_FCLA_Assaultbag_Urban_4","B_FCLA_Assaultbag_Med_Urban_4"];
_winterOneKitbagBackpacks = ["B_FCLA_Kitbag_Winter_1","B_FCLA_Kitbag_Med_Winter_1"];
_winterTwoAssaultBackpacks = ["B_FCLA_Assaultbag_Winter_2","B_FCLA_Assaultbag_Med_Winter_2"];
_winterThreeAssaultBackpacks = ["B_FCLA_Assaultbag_Winter_3","B_FCLA_Assaultbag_Med_Winter_3"];
_winterFourAssaultBackpacks = ["B_FCLA_Assaultbag_Winter_4","B_FCLA_Assaultbag_Med_Winter_4"];
_seaAssaultBackpacks = ["B_FCLA_Assaultbag_Marine","B_FCLA_Assaultbag_Med_Marine"];
_compatibleBackpacks = _greenAssaultBackpacks + _greenKitbagBackpacks + _sapKitbagBackpacks + _coyoteAssaultBackpacks + _coyoteKitbagBackpacks + _toastedKitbagBackpacks + _MTPAssaultBackpacks + _MTPKitbagBackpacks + _tropicalAssaultBackpacks + _CBRNBackpacks + _digitalKitbagBackpacks + _urbanOneKitbagBackpacks + _urbanTwoAssaultBackpacks + _urbanThreeAssaultBackpacks + _urbanFourAssaultBackpacks + _winterOneKitbagBackpacks + _winterTwoAssaultBackpacks + _winterThreeAssaultBackpacks + _winterFourAssaultBackpacks + _seaAssaultBackpacks;



if (_patche == "Patch_Takana") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Takana_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Takana_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Takana.paa"]; true};
};


if (_patche == "Patch_Jaguar") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Jaguar_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Jaguar_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Jaguar.paa"]; true};
};


if (_patche == "Patch_Condor") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Condor_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Condor_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Condor.paa"]; true};
};


if (_patche == "Patch_Salamandra") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Salamandra_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Salamandra_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Salamandra.paa"]; true};
};


if (_patche == "Patch_Anaconda") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Anaconda_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Anaconda_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Anaconda.paa"]; true};
};


if (_patche == "Patch_Quetzal") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Quetzal_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Quetzal_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Quetzal.paa"]; true};
};


if (_patche == "Patch_Medico") exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Green") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Green"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _greenKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Green") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Green"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _sapKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Sap") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Sap"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _coyoteAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Coyote") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Coyote"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _coyoteKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Coyote") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Coyote"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _toastedKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Toasted") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Toasted"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _MTPAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_MTP") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_MTP"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _MTPKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_MTP") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_MTP"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _tropicalAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Tropical") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Tropical"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\Medic.paa"]; true};
  if (_backpack in _digitalKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Digital") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Digital"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _urbanOneKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Urban_1") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Urban_1"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _urbanTwoAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Urban_2") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Urban_2"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _urbanThreeAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Urban_3") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Urban_3"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _urbanFourAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Urban_4") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Urban_4"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _winterOneKitbagBackpacks) exitWith {if (_backpack == "B_FCLA_Kitbag_Med_Winter_1") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Kitbag_Med_Winter_1"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _winterTwoAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Winter_2") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Winter_2"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _winterThreeAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Winter_3") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Winter_3"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _winterFourAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Winter_4") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Winter_4"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
  if (_backpack in _seaAssaultBackpacks) exitWith {if (_backpack == "B_FCLA_Assaultbag_Med_Marine") exitWith {}; removeBackpack _unit; _unit addBackpack "B_FCLA_Assaultbag_Med_Marine"; {_unit addItemToBackpack _x} forEach _itemsInBackpack; true};
};


if (_backpack in _compatibleBackpacks) exitWith {
  if (_backpack in _greenAssaultBackpacks) exitWith {
    if (_backpack == "B_FCLA_Assaultbag_Green") exitWith {};
    removeBackpack _unit;
    _unit addBackpack "B_FCLA_Assaultbag_Green";
    {_unit addItemToBackpack _x} forEach _itemsInBackpack;
    true
  };
  if (_backpack in _CBRNBackpacks) exitWith {(backpackContainer _unit) setObjectTextureGlobal [4, "\FCLA_Interactions\Patches\data\textures\FCLA.paa"]; true};
};
false
