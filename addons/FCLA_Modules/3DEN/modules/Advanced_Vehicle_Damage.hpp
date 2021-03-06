
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Evita que los vehiculos sincronizados reciban un dano fatal, dejandolos con
 * un dano total sin provocar su destruccion.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Module_Advanced_Vehicle_Damage: Module_F {
  author = "hozlucas28";
	displayName = "Asignar DAV";
  icon = "\FCLA_Modules\3DEN\data\Vehicle.paa";
  portrait = "\FCLA_Modules\3DEN\data\Vehicle.paa";
	category = "FCLA_Modules";
	function = "FCLA_Modules_fnc_setAdvancedVehicleDamage3DEN";
	isGlobal = 0;
  isDisposable = 1;
	isTriggerActivated = 1;
  scope = 2;


	class Attributes: AttributesBase {
    class FCLA_Damage_Weapons: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Damage_Weapons";
      displayName = "Destruir armas";
      defaultValue = "true";
		};

    class FCLA_Damage_Items: CheckBox {
      tooltip = "";
      typeName = "BOOL";
      property = "FCLA_Damage_Items";
      displayName = "Destruir items";
      defaultValue = "true";
		};
		class ModuleDescription: ModuleDescription {};
	};

	class ModuleDescription: ModuleDescription {
    sync[] = {"AnyVehicle", "EmptyDetector"};
		description[] =	{"Evita que los vehiculos sincronizados reciban un dano fatal, dejandolos con un dano total sin provocar su destruccion."};
	};
};
