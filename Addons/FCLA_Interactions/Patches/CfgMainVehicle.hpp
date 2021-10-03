
/********************************************************************************|
|                          VEHÍCULOS (MAIN) - "PARCHES"                          |
|********************************************************************************/

//Agregar nueva categoría.
class ACE_Patches {
  displayName = "Parches<br/>(cursos)";
  icon = "\FCLA_Interactions\Patches\data\Picture.paa";
  exceptions[] = {"isNotInside"};

  class ACE_AirCourses {displayName = "Aereos";};
  class ACE_SpecialForcesCourses {displayName = "Fuerzas especiales";};
  class ACE_ReconCourses {displayName = "Reconocimiento";};
  class ACE_ArmoredCourses {displayName = "Blindados";};
  class ACE_InfantryCourses {displayName = "Infantería";};
  class ACE_BasicCourses {displayName = "Básicos";};
};
