
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Establece automaticamente las frecuencias de las radios de onda corta y larga,
 * que se utilizan en la comunidad de FCLA.
 *
 * Return Value:
 * ¿Se ha ejecutado con exito la funcion? <BOOL>
 *
 * Example:
 * call FCLA_Common_fnc_setRadioFrequencies;
 *
 * Notes:
 * Se recomienda utilizar esta funcion a travez del evento
 * personalizado "FCLA_Radio_Frequencies".
 *
 * Las frecuencias se estableceran en el cliente que ejecuto la funcion.
 *
 * Public: [Yes]
---------------------------------------------------------------------------- */

//Verificar existencia de radios (corta y larga).
if (!(call TFAR_fnc_haveSWRadio) && !(call TFAR_fnc_haveLRRadio)) exitWith {false};


[{
  if (call TFAR_fnc_haveSWRadio) then {
    [call TFAR_fnc_activeSwRadio, 1, "50"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 2, "55"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 3, "60"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 4, "65"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 5, "70"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 6, "75"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 7, "80"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 8, "85"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeSwRadio, 9, "90"] call TFAR_fnc_SetChannelFrequency;
  };

  if (call TFAR_fnc_haveLRRadio) then {
    [call TFAR_fnc_activeLrRadio, 1, "50"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 2, "55"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 3, "60"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 4, "65"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 5, "70"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 6, "75"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 7, "80"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 8, "85"] call TFAR_fnc_SetChannelFrequency;
    [call TFAR_fnc_activeLrRadio, 9, "90"] call TFAR_fnc_SetChannelFrequency;
  };
}, [], 2] call CBA_fnc_waitAndExecute;
true
