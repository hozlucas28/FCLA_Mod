
/********************************************************************************|
|                                    PRE INIT                                    |
|********************************************************************************/

FCLA_Core = false;

#define LOCAL 2
#define GLOBAL 1
#include "\FCLA_Core\PreInit\FCLA_Effects.hpp"
#include "\FCLA_Core\PreInit\FCLA_Immersions.hpp"
#include "\FCLA_Core\PreInit\FCLA_Development.hpp"
#include "\FCLA_Core\PreInit\FCLA_Interactions.hpp"
#undef LOCAL
#undef GLOBAL

FCLA_Core = true;
