
/* ----------------------------------------------------------------------------
Function: FCLA_Development_fnc_initDiaries

Description:
    Quita la instrucción "Radio", colocada por el mod "Task Force Radio",
    remplazandola con una personalizada de FCLA.

Public: [NO]

Author:
    hozlucas28
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_unit"];
if (!FCLA_Create_Diary) exitWith {if (_unit diarySubjectExists "FCLA_Community") then {_unit removeDiarySubject "FCLA_Community";};};
[{(_this select 0) diarySubjectExists "Radio";}, {(_this select 0) removeDiarySubject "Radio";}, [_unit]] call CBA_fnc_waitUntilAndExecute;



_unit createDiarySubject ["FCLA_Community", "Comunidad FCLA"];

_unit createDiaryRecord ["FCLA_Community", ["Artículos", "
<font size='20'>Artículos</font><br/><br/>
<font size='15'>· Parche de FCLA...</font><br/>
<img image='\FCLA_Development\Diaries\data\Article_FCLA.jpg' width='150' height='150'/><br/><br/>
<font size='15'>· Parches de las escuadras...</font><br/>
<img image='\FCLA_Development\Diaries\data\Article_Squads.jpg' width='250' height='350'/><br/><br/>
<font color='#D2D658' size='18'>           | Lo recaudado ira destinado a pagar el servidor |</font>
"], taskNull, "",false];

_unit createDiaryRecord ["FCLA_Community", ["Manuales","
<font size='20'>Manuales</font><br/>
<execute expression=''>- CBI (Curso Básico de Infantería)</execute><br/>
<execute expression=''>- CAI (Curso Avanzado de Infantería)</execute><br/>
<execute expression=''>- CMC (Curso de Médico de Combate)</execute><br/>
<execute expression=''>- CFA (Curso de Fusilero Antitanque)</execute><br/>
<execute expression=''>- CAL (Curso de Ametrallador Ligero)</execute><br/>
<execute expression=''>- COR (Curso de Operador de Radio)</execute><br/>
<execute expression=''>- OPVNT (Curso de Operador de Dron)</execute><br/>
<execute expression=''>- CDM (Curso de Don de Mando)</execute>
"], taskNull, "",false];

_unit createDiaryRecord ["FCLA_Community", ["Información","
<font size='20'>Información</font><br/>
- Pagina de la comunidad:  <execute expression=''>https://arma3clanfcla.wixsite.com/fcla</execute><br/>
- Team Speak (oficial):  <execute expression=''>173.234.27.145:10102</execute><br/>
- Youtube:  <execute expression=''>https://www.youtube.com/channel/UCliHyp1bvd0MbcRSkZcPhhw</execute><br/>
- Instagram:  <execute expression=''>https://www.instagram.com/clan__fcla/</execute><br/>
- Facebook:  <execute expression=''>https://www.facebook.com/ArmA3FCLA/</execute>
"], taskNull, "",false];
