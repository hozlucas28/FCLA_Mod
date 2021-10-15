
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra un mensaje informando si se encuentra subiendo/bajando las
 * escaleras del edificio.
 * 
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_stairs"];


switch (_stairs) do {
  case "Go_Up": {
    cutText ["<t size='2.5'>> Subiendo las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK OUT", -1, true, true];
    [{cutText ["<t size='2.5'>> Subiendo las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 1] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 2] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 3] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 4] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 5] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 6] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 7] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 8] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 9] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 10] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Subiendo las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Up.paa'/>", "BLACK FADED", -1, true, true];}, [], 11] call CBA_fnc_waitAndExecute;
  };

  case "Go_Down": {
    cutText ["<t size='2.5'>> Bajando las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK OUT", -1, true, true];
    [{cutText ["<t size='2.5'>> Bajando las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 1] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 2] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 3] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 4] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 5] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 6] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 7] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 8] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras.</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 9] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras..</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 10] call CBA_fnc_waitAndExecute;
    [{cutText ["<t size='2.5'>> Bajando las escaleras...</t><br/><br/><img size='2.5' image='\FCLA_Immersions\Building_Stairs\data\Go_Down.paa'/>", "BLACK FADED", -1, true, true];}, [], 11] call CBA_fnc_waitAndExecute;
  };
};
