params ["_intel"];

[ _intel ] call BIS_fnc_initIntelObject; 
 
﻿if (isServer) then { 
  
 //Diary picture 
 _intel setVariable [ 
  "RscAttributeDiaryRecord_texture", 
  //Path to picture 
  "a3\structures_f_epc\Items\Documents\Data\document_secret_01_co.paa", 
  true 
 ]; 
  
 //Diary Title and Description 
 [ 
  _intel, 
  "RscAttributeDiaryRecord", 
  //[ Title, Description, "" ] 
  ["Top Secret Docs","These Docs outline the enemies defenses",""] 
 ] call BIS_fnc_setServerVariable; 
  
 //Diary entry shared with.. follows BIS_fnc_MP target rules 
 _intel setVariable ["recipients", west, true]; 
  
 //Sides that can interact with intelObject 
 _intel setVariable ["RscAttributeOwners", [west], true]; 
  
 //Optional scripted event handlers 
 
 //Register intel object with Zeus as curator editable, Where _zeus is the curator module 
 _zeus addCuratorEditableObjects [ [ _intel ], false ]; 
 //Add Zeus scripted event, Where _zeus is the curator module 
 [ _zeus, "IntelObjectFound", { hint "Intel found" } ] call BIS_fnc_addScriptedEventHandler; 
 
 //Add intel object scripted event that systemchats to all clients when found and by who 
 [ 
  _intel, 
  "IntelObjectFound", 
  { 
   params[ "", "_foundBy" ]; 
   private _msg = format[ "Intel Found by %1", name _foundBy ]; 
   _msg remoteExec[ "systemChat" ]; 
  } 
  ] call BIS_fnc_addScriptedEventHandler; 
};