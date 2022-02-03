
/***************************************************************************|
|                           VEHICULOS - "EFECTOS"                           |
|***************************************************************************/



/* ------------------------------ PARTICULA ------------------------------- */

class Particle_Base_F: Thing {
  icon = "iconObject_circle";
  simulation = "Fire";
  editorCategory = "FCLA_Effects";
};



/* --------------------------------- HUMOS ---------------------------------- */

class Small_Smoke: Particle_Base_F {
  displayName = "Humo (pequeno)";
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


class Medium_Smoke: Particle_Base_F {
  displayName = "Humo (medio)";
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


class Big_Smoke: Particle_Base_F {
  displayName = "Humo (grande)";
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



/* --------------------------------- FUEGOS --------------------------------- */

class Small_Fire: Particle_Base_F	{
  displayName = "Fuego (pequeno)";
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


class Medium_Fire: Particle_Base_F {
  displayName = "Fuego (medio)";
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
      type = "Medium_Fire_Light";
    	simulation = "light";
    };

    class Sound {
      type = "Fire";
    	simulation = "sound";
    };
	};
};


class Big_Fire: Particle_Base_F {
  displayName = "Fuego (grande)";
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
      type = "Big_Fire_Light";
    	simulation = "light";
    };

    class Sound {
      type = "Fire";
    	simulation = "sound";
    };
	};
};
