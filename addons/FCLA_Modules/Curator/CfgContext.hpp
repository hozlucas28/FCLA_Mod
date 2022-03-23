
/********************************************************************************|
|                          ACCIONES DEL MENU CONTEXTUAL                          |
|********************************************************************************/

class ZEN_Context_Menu_Actions {
  class FCLA_Detach {
    icon = "\FCLA_Modules\Curator\data\Detach.paa";
    priority = 25;
    statement = "[_hoveredEntity] call FCLA_Modules_fnc_attachAndDetachCurator;";
    condition = "!isNull attachedTo player";
    displayName = "Despegarse";
  };

  class TeleportZeus {
    icon = "\a3\Ui_F_Curator\Data\Logos\arma3_curator_eye_256_ca.paa";
    priority = 10;
    statement = "[_position, _hoveredEntity] call FCLA_Modules_fnc_teleportCurator;";
    displayName = "$STR_ZEN_Context_Actions_TeleportZeus";
  };

  class FCLA_AttachTo {
    icon = "\FCLA_Modules\Curator\data\Attach.paa";
    priority = 25;
    statement = "[_hoveredEntity] call FCLA_Modules_fnc_attachAndDetachCurator;";
    condition = "if (!(_hoveredEntity isEqualType objNull)) exitWith {false}; (isNull attachedTo player) && (alive _hoveredEntity) && (_hoveredEntity != player)";
    displayName = "Pegarse";
  };

  class FCLA_Show_Curator {
    icon = "\FCLA_Modules\Curator\data\Show.paa";
    priority = 15;
    statement = "[false] call FCLA_Modules_fnc_hideCurator;";
    condition = "isObjectHidden player";
    displayName = "Mostrar Zeus";
  };

  class FCLA_Hide_Curator {
    icon = "\FCLA_Modules\Curator\data\Hide.paa";
    priority = 15;
    statement = "[true] call FCLA_Modules_fnc_hideCurator;";
    condition = "!isObjectHidden player";
    displayName = "Ocultar Zeus";
  };
};
