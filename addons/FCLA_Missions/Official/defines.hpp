
/********************************************************************************|
|                                  DEFINICIONES                                  |
|********************************************************************************/

#define TRUE 1
#define FALSE 0

#ifdef ALLOW_PROFILE_GLASSES
    #define ALLOW_PROFILE_GLASSES ALLOW_PROFILE_GLASSES
#else
    #define ALLOW_PROFILE_GLASSES FALSE
#endif

#ifdef RESPAWN_DELAY
    #define RESPAWN_DELAY RESPAWN_DELAY
#else
    #define RESPAWN_DELAY 120
#endif

#ifdef RESPAWN_VEHICLE_DELAY
    #define RESPAWN_VEHICLE_DELAY RESPAWN_VEHICLE_DELAY
#else
    #define RESPAWN_VEHICLE_DELAY 300
#endif


#define TRUE 1
#define FALSE 2
#define BASED_ON_PLAYER_OPTIONS 0

#ifdef FORCE_ROTOR_LIB_SIMULATION
    #define FORCE_ROTOR_LIB_SIMULATION FORCE_ROTOR_LIB_SIMULATION
#else
    #define FORCE_ROTOR_LIB_SIMULATION BASED_ON_PLAYER_OPTIONS
#endif
