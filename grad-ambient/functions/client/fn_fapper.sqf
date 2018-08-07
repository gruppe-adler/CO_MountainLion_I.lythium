params ["_unit", "_chair"];

_unit disableAI "ALL";
_unit enableAI "ANIM";

[_unit, "HubSittingChairC_idle1"] remoteExec ["switchMove", 0]; 

_unit addEventHandler ["AnimDone", {
	if (!alive (_this select 0)) exitWith {
		(_this select 0) removeEventHandler ["AnimDone", _thisEventHandler];
		hint "removed";
	};

	[_this select 0, "HubSittingChairC_idle1"] remoteExec ["switchMove", 0]; 
}]; 

// if (isServer) then { _unit attachTo [_chair] };