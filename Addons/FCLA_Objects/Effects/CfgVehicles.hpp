
/***************************************************************************|
|                           VEHÍCULOS - "EFECTOS"                           |
|***************************************************************************/

class Particle_Base_F: Thing {
  simulation = "Fire";
  icon = "iconObject_circle";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  class UserActions {};
  class EventHandlers {init = "if (is3DEN) then {(_this # 0) spawn {_this enablesimulation true;}}; (_this # 0) inflame true;";};
};

class FCLA_Particle_TrainingMineEffect_F: Particle_Base_F {
  displayName = "Chispas";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  scope = 2;
  scopeCurator = 2;

  class Effects {
    class Sparks {
      simulation = "particles";
      type = "TrainingMine_FireSparks";
    };

    class FireSparks {
      simulation = "particles";
      type = "TrainingMine_FireSparks";
    };

    class Smoke {
      simulation = "particles";
      type = "TrainingMine_smoke";
    };

    class Light {
      simulation = "light";
      type = "TrainingMine_light";
    };
  };
};

class FCLA_Particle_BigFire_F: Particle_Base_F {
  displayName = "Fuego (grande)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  scope = 2;
  scopeCurator = 2;

  class Effects {
    class Fire {
      simulation = "particles";
      type = "BigDestructionFire";
    };

    class FireSparks {
      simulation = "particles";
      type = "FireSparks";
    };

    class Smoke {
      simulation = "particles";
      type = "BigDestructionSmoke";
    };

    class Refract {
      simulation = "particles";
      type = "ObjectDestructionRefract";
    };

    class Light {
      simulation = "light";
      type = "BigFireLight";
    };

    class Sound {
      simulation = "sound";
      type = "Fire";
    };
  };
};

class FCLA_Particle_SmallFire_F: Particle_Base_F {
  displayName = "Fuego (pequeño)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  scope = 2;
  scopeCurator = 2;

  class Effects {
    class Fire {
      simulation = "particles";
      type = "SmallDestructionFire";
    };

    class Smoke {
      simulation = "particles";
      type = "SmallDestructionSmoke";
    };

    class Refract {
      simulation = "particles";
      type = "SmallFireFRefract";
    };

    class Light {
      simulation = "light";
      type = "SmallFirePlaceLight";
    };

    class Sound {
      simulation = "sound";
      type = "Fire_camp_small";
    };
  };
};

class FCLA_Particle_MediumFire_F: Particle_Base_F {
  displayName = "Humo (grande)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  scope = 2;
  scopeCurator = 2;

  class Effects {
    class Fire {
      simulation = "particles";
      type = "MediumDestructionFire";
    };

    class Smoke {
      simulation = "particles";
      type = "MediumDestructionSmoke";
    };

    class Refract {
      simulation = "particles";
      type = "ObjectDestructionRefractSmall";
    };

    class Light {
      simulation = "light";
      type = "MediumFireLight";
    };

    class Sound {
      simulation = "sound";
      type = "Fire";
    };
  };
};

class FCLA_Particle_SmallSmoke_F: Particle_Base_F {
  displayName = "Humo (pequeño)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  scope = 2;
  scopeCurator = 2;

  class Effects {
    class Smoke {
      simulation = "particles";
      type = "SmallDestructionSmoke";
    };
  };
};

class FCLA_Particle_WreckSmokeSmall_F: Particle_Base_F {
  displayName = "Humo (pequeño, restos)";
  editorCategory = "FCLA_Category_Structures";
  editorSubcategory = "FCLA_subCategory_Effects";
  scope = 2;
  scopeCurator = 2;

  class Effects {
    class Smoke {
      simulation = "particles";
      type = "wreckSmokeSmall";
    };
  };
};
