
/* ----------------------------------------------------------------------------
Function: FCLA_Video_Settings_fnc_localizeVD

Public: [No]
---------------------------------------------------------------------------- */

_display = (_this select 0) select 0;

(_display displayCtrl 1000) ctrlSetText (toUpper "Configuración de Distancia de Visión...");
(_display displayCtrl 1001) ctrlSetText "A PIE";
(_display displayCtrl 1008) ctrlSetText "EN VEHÍCULO";
(_display displayCtrl 1015) ctrlSetText "EN AERONAVE";
(_display displayCtrl 1002) ctrlSetText "VISIÓN:";
(_display displayCtrl 1010) ctrlSetText "VISIÓN:";
(_display displayCtrl 1016) ctrlSetText "VISIÓN:";
(_display displayCtrl 1003) ctrlSetText "OBJETO:";
(_display displayCtrl 1011) ctrlSetText "OBJETO:";
(_display displayCtrl 1021) ctrlSetText "OBJETO:";
(_display displayCtrl 1005) ctrlSetText "TERRENO:";
(_display displayCtrl 1012) ctrlSetText "TERRENO:";
(_display displayCtrl 1019) ctrlSetText "TERRENO:";
(_display displayCtrl 1403) ctrlSetText "SYNC:";
(_display displayCtrl 1405) ctrlSetText "SYNC:";
(_display displayCtrl 1407) ctrlSetText "SYNC:";
(_display displayCtrl 1612) ctrlSetText "CERRAR";
