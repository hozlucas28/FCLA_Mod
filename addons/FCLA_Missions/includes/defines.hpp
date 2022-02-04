
/********************************************************************************|
|                                  DEFINICIONES                                  |
|********************************************************************************/



/* ------------------------- CONFIGURACIÓN GENERAL ------------------------- */

#define TRUE 1
#define FALSE 0

#ifdef MISSION_NAME
    #define SCENARIO_NAME MISSION_NAME
#else
    #define SCENARIO_NAME "TÍTULO SIN DEFINIR"
#endif

#ifdef PROFILE_GLASSES
    #define ALLOW_PROFILE_GLASSES PROFILE_GLASSES
#else
    #define ALLOW_PROFILE_GLASSES TRUE
#endif

#define TRUE 1
#define FALSE 2
#define BASED_ON_PLAYER_OPTIONS 0

#ifdef FORCE_ADVANCED_FLIGHT
    #define FORCE_ROTOR_LIB_SIMULATION FORCE_ADVANCED_FLIGHT
#else
    #define FORCE_ROTOR_LIB_SIMULATION BASED_ON_PLAYER_OPTIONS
#endif



/* ------------------------- INICIALIZACIÓN LOCAL -------------------------- */

#define TRUE true
#define FALSE false

#ifdef UNLIMITED_LIVES
    #define HAS_UNLIMITED_LIVES UNLIMITED_LIVES
#else
    #define HAS_UNLIMITED_LIVES FALSE
#endif

#ifdef BLUFOR_LIVES
    #define NUMBER_OF_BLUFOR_LIVES BLUFOR_LIVES
#else
    #define NUMBER_OF_BLUFOR_LIVES 3
#endif

#ifdef OPFOR_LIVES
    #define NUMBER_OF_OPFOR_LIVES OPFOR_LIVES
#else
    #define NUMBER_OF_OPFOR_LIVES 3
#endif

#ifdef INDEPENDANT_LIVES
    #define NUMBER_OF_INDEPENDANT_LIVES INDEPENDANT_LIVES
#else
    #define NUMBER_OF_INDEPENDANT_LIVES 3
#endif

#ifdef CIVILIAN_LIVES
    #define NUMBER_OF_CIVILIAN_LIVES CIVILIAN_LIVES
#else
    #define NUMBER_OF_CIVILIAN_LIVES 3
#endif
