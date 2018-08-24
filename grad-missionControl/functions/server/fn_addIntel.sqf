params ["_object", "_name"];

_object setVariable ["Intel_Identifier", _name, true];

[
	_object,											// Object the action is attached to
	"Search Cabinet",										// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",	// Progress icon shown on screen
	"_this distance _target < 3",						// Condition for the action to be shown
	"_caller distance _target < 3",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{ [(_this select 0)] call GRAD_missionControl_fnc_readIntel; diag_log format ["params holdactionadd : %1", _this]; },				// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	12,													// Action duration [s]
	0,													// Priority
	true,												// Remove on completion
	false												// Show in unconscious state 
] remoteExec ["BIS_fnc_holdActionAdd", 0, _object];	// MP compatible implementation