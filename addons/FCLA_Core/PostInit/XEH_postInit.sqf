
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
disableSerialization;
["\n\nFCLA_Core.pbo - PostInit cargando..."] call ACE_Common_fnc_serverLog;
#include "\a3\editor_f\Data\Scripts\dikCodes.h"
#include "\FCLA_Core\PostInit\Chat_Commands.hpp"
#include "\FCLA_Core\PostInit\keyBinds.hpp"
["FCLA_Core.pbo - PostInit completado.\n\n"] call ACE_Common_fnc_serverLog;
