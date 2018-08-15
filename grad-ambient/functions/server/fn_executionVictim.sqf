params ["_unit"];

if (!isServer) exitWith {};

_unit disableAI "ALL";
_unit enableAI "ANIM";

removeAllWeapons _unit;
removeHeadgear _unit;

sleep random 5;

[_unit, "Acts_ExecutionVictim_Loop"] remoteExec ["switchMove", 0];

_unit setDir 0;

_unit addEventHandler ["AnimChanged", {
	params ["_unit"];
	_unit disableAI "ANIM";
	if (!alive _unit) exitWith {
		_unit removeEventHandler ["AnimChanged", _thisEventHandler];
		// hint "removed";
	};

	[_unit, "Acts_ExecutionVictim_Loop"] remoteExec ["switchMove", 0]; 
}];