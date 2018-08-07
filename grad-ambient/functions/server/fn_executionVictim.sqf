params ["_unit"];

if (!isServer) exitWith {};

_unit disableAI "ALL";
_unit enableAI "ANIM";

removeAllWeapons _unit;
removeHeadgear _unit;

sleep random 5;

[_unit, selectRandom ["Acts_CivilHiding_1", "Acts_CivilHiding_2"]] remoteExec ["switchMove", 0]; 

_unit addEventHandler ["AnimDone", {
	if (!alive (_this select 0)) exitWith {
		(_this select 0) removeEventHandler ["AnimDone", _thisEventHandler];
		// hint "removed";
	};

	[_this select 0, "Acts_CivilHiding_2"] remoteExec ["switchMove", 0]; 
}];

_unit addMPEventHandler ["MPHit", {
	params ["_unit"];

	_unit removeAllEventHandlers "AnimDone";	
	_unit removeAllMPEventHandlers "MPHit";
	_unit setUnconscious true;
	_unit setDamage 1;
}];