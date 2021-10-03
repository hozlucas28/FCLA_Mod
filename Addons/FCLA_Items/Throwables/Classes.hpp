
/***************************************************************************|
|                           CLASES - "LANZABLES"                            |
|***************************************************************************/

class FCLA_Molotov {
	class Light1 {
		simulation = "light";
		type = "FCLA_Molotov_Light";
		position[] = {0, 0, 0};
		intensity = 0.0099999998;
		interval = 1;
		start = 2;
		lifeTime = 40;
	};

	class Fire {
		simulation = "particles";
		type = "FCLA_Molotov_Fire_1";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 1;
		start = 2;
		lifeTime = 40;
	};

	class Fire2 {
		simulation = "particles";
		type = "FCLA_Molotov_Fire_2";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 1;
		start = 2;
		lifeTime = 40;
	};

	class Fire3 {
		simulation = "particles";
		type = "FCLA_Molotov_Fire_3";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 1;
		start = 2;
		lifeTime = 40;
	};

	class refract1 {
		simulation = "particles";
		type = "FCLA_Molotov_Refract";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 1;
		start = 2;
		lifeTime = 40;
	};

	class smoke1 {
		simulation = "particles";
		type = "FCLA_Molotov_Small_Smoke";
		position[] = {0, 0, 0};
		intensity = 1;
		interval = 1;
		start = 2;
		lifeTime = 40;
	};

	class sound {
		simulation = "sound";
		type = "Fire";
	};

	class FCLA_Molotov_Small_Fire {
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF1 {
		position[] = {1, 0, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF2 {
		position[] = {-1, 0, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF3 {
		position[] = {2, 0, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF4 {
		position[] = {-2, 0, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF5 {
		position[] = {0, 1, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF6 {
		position[] = {0, -1, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF7 {
		position[] = {0, 2, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF8 {
		position[] = {0, -2, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF9 {
		position[] = {1, 1, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF10 {
		position[] = {-1, -1, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF11 {
		position[] = {2, 2, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF12 {
		position[] = {-2, -2, 0};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF13 {
		position[] = {0, 0, 1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF14 {
		position[] = {0, 0, -1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF15 {
		position[] = {0, 0, 2};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF16 {
		position[] = {0, 0, -2};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF17 {
		position[] = {1, 0, 1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF18 {
		position[] = {1, 1, 1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF19 {
		position[] = {-1, 0, 1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF20 {
		position[] = {-1, -1, 1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};

	class MSmallFireF21 {
		position[] = {-1, -1, -1};
		simulation = "particles";
		type = "FCLA_Molotov_Small_Fire";
	};
};
