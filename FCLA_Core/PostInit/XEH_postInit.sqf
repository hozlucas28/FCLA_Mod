
/* ----------------------------------------------------------------------------
Direction: "\FCLA_Core\PostInit\XEH_postInit.sqf"

Description:
    Incluye librerías que se ejecutaran al llamar a este archivo.
    Funciona como archivo padre.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Inclusiones.
disableSerialization;
["\n\nFCLA_Core.pbo - PostInit cargando..."] remoteExec ["diag_log", 2];
#include "\a3\editor_f\Data\Scripts\dikCodes.h"
#include "\FCLA_Core\PostInit\Chat_Commands.hpp"
#include "\FCLA_Core\PostInit\eventHandlers.hpp"
#include "\FCLA_Core\PostInit\keyBinds.hpp"
["FCLA_Core.pbo - PostInit completado.\n\n"] remoteExec ["diag_log", 2];
