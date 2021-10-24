
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra el texto en pantalla a modo de subtítulos cuando el jugador/unidad
 * controlada esta cerca de la entidad, enviada como argumento.
 *
 * Arguments:
 *            0: Entidad desde donde se verificara la existencia de un
 *               jugador/unidad controlada. <POSITION|UNIT|OBJECT>
 *
 *            1: Líneas (textos) que se quieren mostrar. <ARRAY OF LINES>
 *                - Primera línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                - Segunda línea con el nombre del emisor y texto a mostrar. <ARRAY OF STRINGS>
 *                ...
 *
 *            2: Color para el nombre del emisor. <STRING>
 *                # Colores aceptados: "SIDE", "VEHICLE", "COMMAND", "GROUP",
 *                                     "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR",
 *                                     "OPFOR", "GUER" y "CIV".
 *
 *            3: Tiempo (en segundos) para ocultar cada línea, una vez mostrada. <NUMBER>
 *
 *            4: Distancia en la que se verificara la existencia de un
 *               jugador/unidad controlada. <NUMBER>
 *
 *            5: ¿Repetible/s?. <BOOL> (default: true)
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la función? <BOOL>
 *
 * Examples:
 *            //Subtítulo de una línea, se repetira.
 *            _line = ["[Sdo] Usted", "Hola mundo!, esto es un ejemplo de una linea!"];
 *            [Unidad_1, [_line], "SIDE", 5, 5] call FCLA_Common_fnc_showSubtitleOnRange;
 *
 *            //Subtítulos de dos líneas, no se repetiran.
 *            _line1 = ["[Cbo] Enemigo", "Hola mundo!, primer linea!"];
 *            _line2 = ["[Cbo] Enemigo", "Adios mundo!, segunda linea!"];
 *            [Unidad_1, [_line1, _line2], "OPFOR", 5, 3, false] call FCLA_Common_fnc_showSubtitleOnRange;
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Variables de referencia.
params [
        ["_entity", objNull, [], [0, 1, 2, 3]],
        ["_lines", [[]], [[]], []],
        ["_emitterColor", "", [""], 0],
        ["_timeToHideEachLine", 0, [0], 0],
        ["_distanceToShow", 0, [0], 0],
        ["_repeatable", true, [true], 0]
       ];



//Verificar argumentos.
_compatibleEmitterColors = ["SIDE", "VEHICLE", "COMMAND", "GROUP", "DIRECT", "CUSTOM", "SYSTEM", "BLUFOR", "OPFOR", "GUER", "CIV"];
if ((_lines isEqualTo [[]]) || !(_emitterColor in _compatibleEmitterColors) || (_timeToHideEachLine <= 0) || (_distanceToShow <= 0)) exitWith {false};


//Crear activador.
_trigger = createTrigger ["EmptyDetector", [_entity] call CBA_fnc_getPos, false];
_trigger setTriggerArea [ceil _distanceToShow, ceil _distanceToShow, 0, false,  ceil (_distanceToShow / 2)];
_trigger setTriggerActivation ["ANY", "PRESENT", _repeatable];


//Definir atributos del activador.
_condition = "(call CBA_fnc_currentUnit) in thisList;";
_onActivation = format ["(attachedTo thisTrigger) setRandomLip true; [%1, %2, %3, false] spawn FCLA_Common_fnc_showSubtitles;", _lines, _emitterColor, _timeToHideEachLine];
_onDesactivation = "(attachedTo thisTrigger) setRandomLip false; [false] spawn FCLA_Common_fnc_showSubtitles;";
_trigger setTriggerStatements [_condition, _onActivation, _onDesactivation];
_trigger attachTo [_entity];
true






/*
SOLUCIONAR QUE AL USAR LA FUNCION PARA DEJAR DE MOSTRAR LOS SUBTITULOS SI SON MAS DE UNO SE BUGUEA
ELIMINAR TRIGGER SI LA ENTIDAD ES ELIMINADA
*/
