
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Permite provocar lesiones.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

class FCLA_Create_Injuries: Module_F {
  author = "hozlucas28";
  displayName = "Provocar lesiones (ACE)";
  icon = "\FCLA_Modules\3DEN\data\Medical_Cross.paa";
  portrait = "\FCLA_Modules\3DEN\data\Medical_Cross.paa";
  category = "FCLA_Modules";
  function = "FCLA_Modules_fnc_createInjuries3DEN";
  is3DEN = NOT_RUN_IN_3DEN;
  isGlobal = GLOBAL;
  canSetArea = HAS_NOT_SETTABLE_AREA;
  isDisposable = UNREPEATABLE;
  canSetAreaHeight = HAS_NOT_SETTABLE_AREA_HEIGHT;
  isTriggerActivated = CAN_ACTIVATED_BY_TRIGGER;
  scope = 2;


 class Attributes: AttributesBase {
    class FCLA_Type_Of_Injury: Combo {
      tooltip = "";
      typeName = "STRING";
      property = "FCLA_Type_Of_Injury";
      displayName = "Tipo de lesión";
      defaultValue = """grenade""";

     class Values {
       class Falling {
         name = "Caida";
         value = "falling";
       };

       class Drowning {
         name = "Ahogo";
         value = "drowning";
       };

       class Bullet {
         name = "Disparo";
         value = "bullet";
       };

       class Grenade {
         name = "Granada";
         value = "grenade";
       };

       class Collision {
         name = "Colisión";
         value = "collision";
       };

       class Stab {
         name = "Puñalada";
         value = "stab";
       };

       class Punch {
         name = "Puñetazo";
         value = "punch";
       };

       class Burn {
         name = "Quemadura";
         value = "burn";
       };

       class Explosive {
         name = "Explosivo";
         value = "explosive";
       };

       class Shell {
         name = "Proyectil";
         value = "shell";
       };

       class Backblast {
         name = "Onda de choque";
         value = "backblast";
       };

       class Rope_Burn {
         name = "Quemadura de cuerda";
         value = "ropeburn";
       };

       class Vehicle_Crash {
         name = "Accidente de vehículo";
         value = "vehiclecrash";
       };
     };
   };

   class FCLA_Level_Of_Injury: Edit {
     tooltip = "Mientras más alto sea el nivel de lesiones, más heridas habra.\n• [5 - 10] = alta complejidad.\n• [2.5 - 5] = media complejidad.\n• [0 - 2.5] = baja complejidad.";
     typeName = "NUMBER";
     property = "FCLA_Level_Of_Injury";
     displayName = "Nivel de lesiones";
     defaultValue = 1.25;
   };

   class FCLA_Force_Unconsciousness: CheckBox {
     tooltip = "Si se activa se forzara a la unidad a estar inconsciente sin importar la gravedad de sus heridas.";
     typeName = "BOOL";
     property = "FCLA_Force_Unconsciousness";
     displayName = "¿Forzar inconsciencia?";
     defaultValue = "false";
   };

   class FCLA_Fracture_Right_Arm: CheckBox {
     tooltip = "";
     typeName = "BOOL";
     property = "FCLA_Fracture_Right_Arm";
     displayName = "¿Fracturar brazo derecho?";
     defaultValue = "false";
   };

   class FCLA_Fracture_Left_Arm: CheckBox {
     tooltip = "";
     typeName = "BOOL";
     property = "FCLA_Fracture_Left_Arm";
     displayName = "¿Fracturar brazo izquierdo?";
     defaultValue = "false";
   };

   class FCLA_Fracture_Right_Leg: CheckBox {
     tooltip = "";
     typeName = "BOOL";
     property = "FCLA_Fracture_Right_Leg";
     displayName = "¿Fracturar pierna derecha?";
     defaultValue = "false";
   };

   class FCLA_Fracture_Left_Leg: CheckBox {
     tooltip = "";
     typeName = "BOOL";
     property = "FCLA_Fracture_Left_Leg";
     displayName = "¿Fracturar pierna izquierda?";
     defaultValue = "false";
   };
   class ModuleDescription: ModuleDescription {};
 };

 class ModuleDescription: ModuleDescription {
   description[] =	{"Permite provocarle lesiones a las unidades sincronizadas al módulo."};
 };
};
