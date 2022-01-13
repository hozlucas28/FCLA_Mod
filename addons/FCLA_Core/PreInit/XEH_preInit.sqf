
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Incluye librerías que se ejecutaran al llamar a este archivo.
 * Funciona como archivo padre.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Inclusiones.
["\n\nFCLA_Core.pbo - PreInit cargando..."] call ACE_Common_fnc_serverLog;
#define LOCAL 0
#define GLOBAL 1
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Interactions.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Development.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Effects.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Immersions.hpp"
#include "\FCLA_Core\PreInit\Addon_Options\FCLA_Video_Settings.hpp"
#undef LOCAL
#undef GLOBAL
["FCLA_Core.pbo - PreInit completado.\n\n"] call ACE_Common_fnc_serverLog;
