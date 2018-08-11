BRIEFING_DONE = false;

titleText ["", "BLACK", 999];
0 fadeSound 0;
enableSentences false;
["BLU_F", "USOCP"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", "Taliban"] call GRAD_Loadout_fnc_FactionSetLoadout;
call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";

setViewDistance 4000;
/*

titleText ["", "BLACK FADED", 0];

sleep 3;

titleText ["", "BLACK IN", 5];

_introPicBlack = findDisplay 46 ctrlCreate ["RscPicture", -1];
_introPicBlack ctrlSetPosition [
	safeZoneX,  
 	safezoneY,  
 	safeZoneW,  
 	safezoneH
];
_introPicBlack ctrlsetText "pic\intro.paa";
_introPicBlack ctrlCommit 0;

sleep 5;

_introPicWhite = findDisplay 46 ctrlCreate ["RscPicture", -1];
_introPicWhite ctrlSetPosition [
	safeZoneX,  
 	safezoneY,  
 	safeZoneW,  
 	safezoneH
];
_introPicWhite ctrlsetText "pic\intro_white.paa";
_introPicWhite ctrlsetFade 1;
_introPicWhite ctrlCommit 0;

_introPicWhite ctrlsetFade 0;
_introPicWhite ctrlCommit 3;

_introPicBlack ctrlsetFade 1;
_introPicBlack ctrlCommit 6;

sleep 5;

_introPicWhite ctrlsetFade 1;
_introPicWhite ctrlCommit 10;
*/

/*

cursorObject setDriveOnPath 
[
	getPos obj_extr_1,
	getPos obj_extr_2,
	getPos obj_extr_3,
	getPos obj_extr_4,
	getPos obj_extr_5,
	getPos obj_extr_6,
	getPos obj_extr_7,
	getPos obj_extr_8,
	getPos obj_extr_9,
	getPos obj_extr_10,
	getPos obj_extr_11,
	getPos obj_extr_12,
	getPos obj_extr_13,
	getPos obj_extr_14,
	getPos obj_extr_15,
	getPos obj_extr_16,
	getPos obj_extr_17,
	getPos obj_extr_18,
	getPos obj_extr_19,
	getPos obj_extr_20,
	getPos obj_extr_21
];

*/