
/***************************************************************************|
|                           CLASES - "LANZABLES"                            |
|***************************************************************************/

class FCLA_Molotov {
	class Light1 {
		type = "FCLA_Molotov";
		start = 2;
		interval = 1;
		lifeTime = 40;
		intensity = 0.0099999998;
		simulation = "light";
		position[] = {0, 0, 0};
	};

	class Fire {
		type = "FCLA_Molotov_Fire_1";
		start = 2;
		interval = 1;
		lifeTime = 40;
		intensity = 1;
		simulation = "particles";
		position[] = {0, 0, 0};
	};

	class Fire2 {
		type = "FCLA_Molotov_Fire_2";
		start = 2;
		interval = 1;
		lifeTime = 40;
		intensity = 1;
		simulation = "particles";
		position[] = {0, 0, 0};
	};

	class Fire3 {
		type = "FCLA_Molotov_Fire_3";
		start = 2;
		interval = 1;
		lifeTime = 40;
		intensity = 1;
		simulation = "particles";
		position[] = {0, 0, 0};
	};

	class refract1 {
		type = "FCLA_Molotov_Refract";
		start = 2;
		interval = 1;
		lifeTime = 40;
		intensity = 1;
		simulation = "particles";
		position[] = {0, 0, 0};
	};

	class smoke1 {
		type = "FCLA_Molotov_Small_Smoke";
		start = 2;
		interval = 1;
		lifeTime = 40;
		intensity = 1;
		simulation = "particles";
		position[] = {0, 0, 0};
	};

	class sound {
		type = "Fire";
		simulation = "sound";
	};

	class FCLA_Molotov_Small_Fire {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
	};

	class MSmallFireF1 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {1, 0, 0};
	};

	class MSmallFireF2 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-1, 0, 0};
	};

	class MSmallFireF3 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {2, 0, 0};
	};

	class MSmallFireF4 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-2, 0, 0};
	};

	class MSmallFireF5 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, 1, 0};
	};

	class MSmallFireF6 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, -1, 0};
	};

	class MSmallFireF7 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, 2, 0};
	};

	class MSmallFireF8 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, -2, 0};
	};

	class MSmallFireF9 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {1, 1, 0};
	};

	class MSmallFireF10 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-1, -1, 0};
	};

	class MSmallFireF11 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {2, 2, 0};
	};

	class MSmallFireF12 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-2, -2, 0};
	};

	class MSmallFireF13 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, 0, 1};
	};

	class MSmallFireF14 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, 0, -1};
	};

	class MSmallFireF15 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, 0, 2};
	};

	class MSmallFireF16 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {0, 0, -2};
	};

	class MSmallFireF17 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {1, 0, 1};
	};

	class MSmallFireF18 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {1, 1, 1};
	};

	class MSmallFireF19 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-1, 0, 1};
	};

	class MSmallFireF20 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-1, -1, 1};
	};

	class MSmallFireF21 {
		type = "FCLA_Molotov_Small_Fire";
		simulation = "particles";
		position[] = {-1, -1, -1};
	};
};
