if (isMultiplayer) then {
	setDate [2015, 10, 06, 5, 0];
};

private _chairs = [
	chair_1,
	chair_2,
	chair_3,
	chair_4,
	chair_5,
	chair_6,
	chair_7,
	chair_8,
	chair_9,
	chair_10,
	chair_11,
	chair_12,
	chair_13,
	chair_14,
	chair_15,
	chair_16,
	chair_17,
	chair_18,
	chair_19,
	chair_20,
	chair_21,
	chair_22,
	chair_23,
	chair_24,
	chair_25,
	chair_26,
	chair_27,
	chair_28,
	chair_29,
	chair_30,
	chair_31,
	chair_32,
	chair_33,
	chair_34,
	chair_35,
	chair_36
];

{
	if (!(_x isEqualTo slot_platoonlead) && (!(side _x isEqualTo civilian))) then {
		private _chair = _chairs select _forEachIndex;
		[_chair, _x] remoteExec ["acex_sitting_fnc_sit"];
	};

} forEach playableUnits + switchableUnits;

["Initialize", [true]] call BIS_fnc_dynamicGroups;

if (isMultiplayer) then {
	[] spawn GRAD_introCam_fnc_init;
};