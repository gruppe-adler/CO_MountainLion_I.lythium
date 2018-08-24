params ["_object"];

diag_log format ["_object %1", _object];

private _name = _object getVariable ["Intel_Identifier", ""];
private _intel = "<img image='pic\" + _name + ".jpg' />";

player createDiaryRecord ["Diary", ["Intel", _intel]];
	
/*
if (_identifier > 0) then {
	["Intel found"] remoteExec ["hint"];
} else {
	hint "nothing found";
};
*/