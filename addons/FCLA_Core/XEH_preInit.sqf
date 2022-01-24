
/********************************************************************************|
|                                    PRE INIT                                    |
|********************************************************************************/

["[FCLA] (core): preInit cargando..."] call ACE_Common_fnc_serverLog;
#define LOCAL 0
#define GLOBAL 1
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Interactions.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Development.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Effects.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Immersions.hpp"
#undef LOCAL
#undef GLOBAL
["[FCLA] (core): preInit cargado."] call ACE_Common_fnc_serverLog;
true
