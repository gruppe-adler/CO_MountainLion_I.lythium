waitUntil {!isNull player};
waitUntil {  time > 3 };
if (  
  isClass (configFile >> "CfgPatches" >> "achilles_modules_f_achilles")
) then
{
  // Note that the line below has to be uncommented if your mission is a Zeus Game Master mission.
  // TODO check if below is necessary to uncomment
  waitUntil {not isNil "ares_category_list"};

  ["ZEUS HELPERS", "Spawn Intel Map",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    private _map = createVehicle ["Land_Map_Malden_F", _position, [], 0, "can_collide"];
    private _mapHolder = createVehicle ["groundWeaponHolder", _position, [], 0, "can_collide"]; 
    _mapHolder addItemCargoGlobal ["ItemMap", 1];

    [{
      params ["_mapHolder", "_map"];
      
          [{
            params ["_mapHolder", "_map"];
            count ((getItemCargo _mapHolder) select 0) isEqualTo 0
          }, {
            params ["_mapHolder", "_map"];
            deleteVehicle _map;
            deleteVehicle _mapHolder;
          }, [_mapHolder, _map]] call CBA_fnc_waitUntilAndExecute;

    }, [_mapHolder, _map], 3] call CBA_fnc_waitAndExecute;

    }] call Ares_fnc_RegisterCustomModule;


  ["ZEUS HELPERS", "Create Chair Circle",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    
    private _count =count (playableUnits + switchableUnits);
    
    // possible chairs
    private _chairs = ["Land_CampingChair_V1_F", _position, _count] call GRAD_missionControl_fnc_createChairCircle;

  }] call Ares_fnc_RegisterCustomModule;

  ["ZEUS HELPERS", "Toggle AI Charge",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    private _current = missionNamespace getVariable ["GRAD_MISSIONCONTROL_ZEUS_AI_CHARGE", false];
    missionNamespace setVariable ["GRAD_MISSIONCONTROL_ZEUS_AI_CHARGE", !_current, true];

    hint format ["AI CHARGE: %1", !_current];

  }] call Ares_fnc_RegisterCustomModule;

};


{
  _x addEventHandler ["CuratorWaypointPlaced", {
      params ["_curator", "_group", "_waypointID"];

  if (missionNamespace getVariable ["GRAD_MISSIONCONTROL_ZEUS_AI_CHARGE", false]) then {

        [_group, _waypointID] call GRAD_missionControl_fnc_enableChargeMode;
  };

  }];
} forEach allCurators;

