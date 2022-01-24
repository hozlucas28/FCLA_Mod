
/********************************************************************************|
|                                    PRE INIT                                    |
|********************************************************************************/

["[FCLA] (core): preInit cargando..."] call ACE_Common_fnc_serverLog;
#define LOCAL 0
#define GLOBAL 1
#include "\FCLA_Core\PreInit\FCLA_Interactions.hpp"
#include "\FCLA_Core\PreInit\FCLA_Development.hpp"
#include "\FCLA_Core\PreInit\FCLA_Effects.hpp"
#include "\FCLA_Core\PreInit\FCLA_Immersions.hpp"
#undef LOCAL
#undef GLOBAL
["[FCLA] (core): preInit cargado."] call ACE_Common_fnc_serverLog;
true
