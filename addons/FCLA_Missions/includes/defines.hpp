
/********************************************************************************|
|                                  DEFINICIONES                                  |
|********************************************************************************/

#define TRUE true
#define FALSE false



/* ------------------------- CONFIGURACIÓN GENERAL ------------------------- */

#ifdef MISSION_NAME
    #define SCENARIO_NAME MISSION_NAME
#else
    #define SCENARIO_NAME "TÍTULO SIN DEFINIR"
#endif



/* ------------------------- INICIALIZACIÓN LOCAL -------------------------- */

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
