private _location = createLocation [ "NameLocal" , position intro_march2, 1000, 1000]; 
_location setText "NATO Basis Kandahar";

[] call GRAD_missionControl_fnc_setMyFrequency;
[] call GRAD_missionControl_fnc_addModules;