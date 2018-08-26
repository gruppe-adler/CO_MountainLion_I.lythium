params ["_box"];

if (!isServer) exitWith {};

_box addMagazineCargoGlobal ["", 10];

_box addWeaponCargoGlobal ["", 10];

_box addItemCargoGlobal ["", 10];