
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Muestra/Oculta la manguera que tiene la mochila de oxígeno.
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variables de referencia.
params ["_player", "_state"];
_currentGear = goggles _player;
_currentBackpack = backpack _player;
_backpackContainer = backpackContainer _player;



if (_state) then {
	switch (true) do {
		case (_currentGear in ["G_AirPurifyingRespirator_01_F", "G_AirPurifyingRespirator_01_nofilter_F"]): {
			switch (true) do {
				case (_currentBackpack == "B_CombinationUnitRespirator_01_F"): {
					_player linkItem "G_AirPurifyingRespirator_01_nofilter_F";
					_backpackContainer setObjectTextureGlobal [1, "a3\supplies_f_enoch\bags\data\b_cur_01_co.paa"];
					_backpackContainer setObjectTextureGlobal [2, "a3\supplies_f_enoch\bags\data\b_cur_01_co.paa"];
					_backpackContainer setObjectTextureGlobal [3, ""];
				};

				case (_currentBackpack == "B_SCBA_01_F"): {
					_player linkItem "G_AirPurifyingRespirator_01_nofilter_F";
					_backpackContainer setObjectTextureGlobal [1, "a3\supplies_f_enoch\bags\data\b_scba_01_co.paa"];
					_backpackContainer setObjectTextureGlobal [2, ""];
				};
			};
		};

		case (_currentGear in ["G_AirPurifyingRespirator_02_black_F", "G_AirPurifyingRespirator_02_olive_F", "G_AirPurifyingRespirator_02_sand_F"]): {
			switch (true) do {
				case (_currentBackpack == "B_CombinationUnitRespirator_01_F"): {
					_backpackContainer setObjectTextureGlobal [1, ""];
					_backpackContainer setObjectTextureGlobal [2, ""];
					_backpackContainer setObjectTextureGlobal [3, ""];
				};

				case (_currentBackpack == "B_SCBA_01_F"): {
					_backpackContainer setObjectTextureGlobal [1, ""];
					_backpackContainer setObjectTextureGlobal [2, ""];
				};
			};
		};

		case (_currentGear == "G_RegulatorMask_F"): {
			switch (true) do {
				case (_currentBackpack == "B_CombinationUnitRespirator_01_F"): {
					_backpackContainer setObjectTextureGlobal [1, "a3\supplies_f_enoch\bags\data\b_cur_01_co.paa"];
					_backpackContainer setObjectTextureGlobal [2, ""];
					_backpackContainer setObjectTextureGlobal [3, "a3\supplies_f_enoch\bags\data\b_cur_01_co.paa"];
				};

				case (_currentBackpack == "B_SCBA_01_F"): {
					_backpackContainer setObjectTextureGlobal [1, ""];
					_backpackContainer setObjectTextureGlobal [2, "a3\supplies_f_enoch\bags\data\b_scba_01_co.paa"];
				};
			};
		};
	};
} else {
	switch (true) do {
		case (_currentBackpack == "B_CombinationUnitRespirator_01_F"): {
			_backpackContainer setObjectTextureGlobal [1, ""];
			_backpackContainer setObjectTextureGlobal [2, ""];
			_backpackContainer setObjectTextureGlobal [3, ""];
		};

		case (_currentBackpack == "B_SCBA_01_F"): {
			_backpackContainer setObjectTextureGlobal [1, ""];
			_backpackContainer setObjectTextureGlobal [2, ""];
		};
	};
};
