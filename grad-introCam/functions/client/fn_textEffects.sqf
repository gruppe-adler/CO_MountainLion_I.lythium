titleText ["", "BLACK FADED", 0];
0 fadeSound 0;
sleep 5;

playMusic "muse_high";
introRadio say3D ["muse_low", 200];

titleText ["", "BLACK IN", 15];
15 fadeSound 1;

_introPicBlack = findDisplay 46 ctrlCreate ["RscPicture", -1];
_introPicBlack ctrlSetPosition [
	safeZoneX,  
 	safezoneY,  
 	safeZoneW,  
 	safezoneH
];
_introPicBlack ctrlsetText "pic\intro.paa";
_introPicBlack ctrlCommit 0;

sleep 25;

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

sleep 50;

10 fadeMusic 0;

/*

titleText ["", "BLACK OUT", 2];
5 fadeSound 0;

sleep 5;

titleText ["", "BLACK IN", 2];

5 fadeSound 1;
*/