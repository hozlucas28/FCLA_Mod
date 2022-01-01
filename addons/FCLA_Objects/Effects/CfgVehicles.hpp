
/***************************************************************************|
|                           VEHÍCULOS - "EFECTOS"                           |
|***************************************************************************/

class Particle_Base_F: Thing {
  icon = "iconObject_circle";
  simulation = "Fire";
  editorCategory = "FCLA_Effects";
};



/* --------------------------------- HUMO --------------------------------- */

class FCLA_Small_Smoke: Particle_Base_F {
  displayName = "Humo (pequeño)";
  //editorPreview = "\FCLA_Objects\Effects\pictures\FCLA_Small_Smoke.jpg";
  editorCategory = "FCLA_Effects";
  editorSubcategory = "FCLA_Smoke";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {
    init = "(_this select 0) inflame true; if (is3DEN) then {(_this select 0) spawn {_this enablesimulation true;};} else {(_this select 0) spawn {_this hideObjectGlobal true;};};";
  };

	class Effects	{
		class Smoke	{
      type = "SmallDestructionSmoke";
			simulation = "particles";
		};
	};
};


class FCLA_Medium_Smoke: Particle_Base_F {
  displayName = "Humo (medio)";
  //editorPreview = "\FCLA_Objects\Effects\pictures\FCLA_Medium_Smoke.jpg";
  editorCategory = "FCLA_Effects";
  editorSubcategory = "FCLA_Smoke";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {
    init = "(_this select 0) inflame true; if (is3DEN) then {(_this select 0) spawn {_this enablesimulation true;};} else {(_this select 0) spawn {_this hideObjectGlobal true;};};";
  };

	class Effects {
		class Smoke {
      type = "MediumDestructionSmoke";
			simulation = "particles";
		};
	};
};


class FCLA_Big_Smoke: Particle_Base_F {
  displayName = "Humo (grande)";
  //editorPreview = "\FCLA_Objects\Effects\pictures\FCLA_Big_Smoke.jpg";
  editorCategory = "FCLA_Effects";
  editorSubcategory = "FCLA_Smoke";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {
    init = "(_this select 0) inflame true; if (is3DEN) then {(_this select 0) spawn {_this enablesimulation true;};} else {(_this select 0) spawn {_this hideObjectGlobal true;};};";
  };

  class Effects {
    class Smoke {
      type = "BigDestructionSmoke";
      simulation = "particles";
    };
  };
};



/* --------------------------------- FUEGO --------------------------------- */

class FCLA_Small_Fire: Particle_Base_F	{
  displayName = "Fuego (pequeño)";
  //editorPreview = "\FCLA_Objects\Effects\pictures\FCLA_Small_Fire.jpg";
  editorCategory = "FCLA_Effects";
  editorSubcategory = "FCLA_Fire";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {
    init = "(_this select 0) inflame true; if (is3DEN) then {(_this select 0) spawn {_this enablesimulation true;};} else {(_this select 0) spawn {_this hideObjectGlobal true;};};";
  };

	class Effects	{
    class Fire {
      type = "SmallDestructionFire";
    	simulation = "particles";
    };

    class Smoke {
      type = "SmallDestructionSmoke";
    	simulation = "particles";
    };

    class Refract {
      type = "SmallFireFRefract";
    	simulation = "particles";
    };

    class Light {
      type = "SmallFirePlaceLight";
    	simulation = "light";
    };

    class Sound {
      type = "Fire_camp_small";
    	simulation = "sound";
    };
	};
};


class FCLA_Medium_Fire: Particle_Base_F {
  displayName = "Fuego (medio)";
  //editorPreview = "\FCLA_Objects\Effects\pictures\FCLA_Medium_Fire.jpg";
  editorCategory = "FCLA_Effects";
  editorSubcategory = "FCLA_Fire";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {
    init = "(_this select 0) inflame true; if (is3DEN) then {(_this select 0) spawn {_this enablesimulation true;};} else {(_this select 0) spawn {_this hideObjectGlobal true;};};";
  };

  class Effects {
    class Fire {
      type = "MediumDestructionFire";
    	simulation = "particles";
    };

    class Smoke {
      type = "MediumDestructionSmoke";
    	simulation = "particles";
    };

    class Refract {
      type = "ObjectDestructionRefractSmall";
    	simulation = "particles";
    };

    class Light {
      type = "MediumFireLight";
    	simulation = "light";
    };

    class Sound {
      type = "Fire";
    	simulation = "sound";
    };
	};
};


class FCLA_Big_Fire: Particle_Base_F {
  displayName = "Fuego (grande)";
  //editorPreview = "\FCLA_Objects\Effects\pictures\FCLA_Big_Fire.jpg";
  editorCategory = "FCLA_Effects";
  editorSubcategory = "FCLA_Fire";
  scope = 2;
  scopeCurator = 2;

  class EventHandlers {
    init = "(_this select 0) inflame true; if (is3DEN) then {(_this select 0) spawn {_this enablesimulation true;};} else {(_this select 0) spawn {_this hideObjectGlobal true;};};";
  };

  class Effects	{
    class Fire {
      type = "BigDestructionFire";
    	simulation = "particles";
    };

    class FireSparks {
      type = "FireSparks";
    	simulation = "particles";
    };

    class Smoke {
      type = "BigDestructionSmoke";
    	simulation = "particles";
    };

    class Refract {
      type = "ObjectDestructionRefract";
    	simulation = "particles";
    };

    class Light {
      type = "BigFireLight";
    	simulation = "light";
    };

    class Sound {
      type = "Fire";
    	simulation = "sound";
    };
	};
};
