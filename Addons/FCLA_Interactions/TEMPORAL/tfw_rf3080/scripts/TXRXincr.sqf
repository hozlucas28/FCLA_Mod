// "nearestObjects [player, "tfw_rf3080Object", 10]"; 
/*while {!isNull (_this select 0)} do {
	_dist=player distance (_this select 0);
	if (_dist < 6) then { 
	player setVariable ['tf_sendingDistanceMultiplicator', 4, true]; 
	} 
	else { player setVariable ['tf_sendingDistanceMultiplicator', 1.0, true]; 
	};
	sleep 10;
};*/

[{
    private _object = getPos player nearestObject "tfw_rf3080Object";
    if ((_object distance player) < 6) then {
		player setVariable ['tf_sendingDistanceMultiplicator', 4, true];
		}
		else { player setVariable ['tf_sendingDistanceMultiplicator', 1, true];
		};
		if (isNull _object) exitWith {(_this select 1) call CBA_fnc_removePerFrameHandler;
		};
}, 10] call CBA_fnc_addPerframeHandler;