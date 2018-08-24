params ["_vehicle"];



_wheelVariables = [];
_config = missionConfigFile >> typeOf _vehicle >> "Wheels";
_wheels = _config call BIS_fnc_getCfgSubClasses;
{

	_vehicle sethit [_x, 1];
}forEach _wheels;

/*

_vehicle sethit ["wheel_1_1_steering", 1];
_vehicle sethit ["wheel_1_2_steering", 1];
_vehicle sethit ["wheel_2_1_steering", 1];
_vehicle sethit ["wheel_2_2_steering", 1];

*/