
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Core\PreInit\XEH_preInit.sqf"

Description:
    Incluye librerías que se ejecutaran al llamar a este archivo.
    Funciona como archivo padre.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Inclusiones.
["\n\nFCLA_Core.pbo - PreInit cargando..."] remoteExec ["diag_log", 2];
#define LOCAL 0
#define GLOBAL 1
#include "\FCLA_Core\preInit\Addon_Options\FCLA_Interactions.hpp"
#include "\FCLA_Core\preInit\Addon_Options\FCLA_Development.hpp"
#include "\FCLA_Core\preInit\Addon_Options\FCLA_Effects.hpp"
#include "\FCLA_Core\preInit\Addon_Options\FCLA_Immersions.hpp"
#include "\FCLA_Core\preInit\Addon_Options\FCLA_Video_Settings.hpp"
#undef LOCAL
#undef GLOBAL
["FCLA_Core.pbo - PreInit completado.\n\n"] remoteExec ["diag_log", 2];
