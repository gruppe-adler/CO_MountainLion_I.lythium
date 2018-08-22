params ["_identifier"];

private _title = format ["Intel %1", _identifier];
private _description = "";

switch _identifier do {
	case 1: { _description = [] call GRAD_missionControl_fnc_getIntel_1; };	
	case 2: { _description = [] call GRAD_missionControl_fnc_getIntel_2; };	
	case 3: { _description = [] call GRAD_missionControl_fnc_getIntel_3; };

};

private _descriptionCombined = parseText format ["%1 <br /><br />الف ششاني <img image='pic\flag_full.paa' />"];

player createDiaryRecord [_title, _descriptionCombined];