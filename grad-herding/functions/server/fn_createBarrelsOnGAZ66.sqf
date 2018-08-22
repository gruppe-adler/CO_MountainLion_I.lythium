params ["_position"];

private _vehicle = createVehicle ["rhsgref_ins_g_gaz66o_flat", _position];

[
	_vehicle,
	["rhs_sand",1], 
	["light_hide",1,"bench_hide",1,"cover_hide",1,"spare_hide",0,"rear_numplate_hide",1]
] call BIS_fnc_initVehicle;

[_vehicle] spawn { 
		params ["_vehicle"];

		private _positions = [
			[[-1.80511,-0.448242,0.885742], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.81591,0.436523,2.771], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.79712,0.177734,0.84082], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.79918,0.40625,-0.0712891], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.81258,-0.219727,-0.0444336], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.78885,0.399414,1.74316], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.80673,-0.272461,1.77686], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-1.81157,-0.40625,2.73633], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-2.24944,0.0449219,2.73535], [1,1.91069e-015,4.37114e-008], [0,1,-4.37114e-008]],
			[[-2.39063,-0.261719,1.54004], [0.973635,-6.59156e-009,-0.228113], [-3.4711e-009,1,-4.37114e-008]],
			[[1.84229,1.35059,-0.0742188], [-0.801432,-1.12028e-007,-0.598085], [-1.07165e-007,1,-4.37114e-008]],
			[[-1.11426,2.16821,0.0722656], [0.108762,-3.70045e-008,-0.994068], [-5.92812e-008,1,-4.37114e-008]],
			[[-0.390625,2.37939,2.09473], [0.487095,-1.84251e-008,-0.873349], [-4.05469e-008,1,-4.37114e-008]],
			[[-0.224609,2.40576,0.222656], [0.426973,-2.06943e-008,-0.904264], [-4.41068e-008,1,-4.37114e-008]],
			[[-1.86035,1.48633,0.881348], [0.782693,-1.09655e-008,-0.622408], [-2.07499e-008,1,-4.37114e-008]],
			[[1.34619,1.99316,2.63916], [-0.801432,-1.12028e-007,-0.598085], [-1.07165e-007,1,-4.37114e-008]],
			[[0.227539,2.3156,1.81836], [-0.00134498,-4.37991e-008,-0.999999], [-6.52476e-008,1,-4.37114e-008]],
			[[0.817383,2.31289,1.26514], [-0.00134498,-4.37991e-008,-0.999999], [-6.52476e-008,1,-4.37114e-008]],
			[[-1.91748,2.07617,0.266602], [0.782693,-1.09655e-008,-0.622408], [-2.07499e-008,1,-4.37114e-008]],
			[[-2.84351,0.200195,0.744141], [0.973635,-6.59156e-009,-0.228113], [-3.4711e-009,1,-4.37114e-008]],
			[[1.85352,1.87109,2.38574], [-0.801432,-1.12028e-007,-0.598085], [-1.07165e-007,1,-4.37114e-008]],
			[[-2.8562,0.212891,-0.109863], [0.973635,-6.59156e-009,-0.228113], [-3.4711e-009,1,-4.37114e-008]],
			[[-2.71313,0.858398,1.10352], [0.973635,-6.59156e-009,-0.228113], [-3.4711e-009,1,-4.37114e-008]],
			[[-0.944336,2.68701,2.11328], [0.487095,-1.84251e-008,-0.873349], [-4.05469e-008,1,-4.37114e-008]],
			[[-1.55371,2.76611,0.304199], [0.487095,-1.84251e-008,-0.873349], [-4.05469e-008,1,-4.37114e-008]],
			[[2.3374,2.09082,1.78906], [-0.801432,-1.12028e-007,-0.598085], [-1.07165e-007,1,-4.37114e-008]],
			[[-1.17578,3.67773,0.219238], [0.487095,0.676578,-0.552251], [0,0.632337,0.774693]]
		];

		for "_i" from 1 to (count _positions) do {
			private _attachPos = (_positions select _i) select 0; 
			private _vectorDir (_positions select _i) select 1; 
			private _vectorUp = (_positions select _i) select 2; 
			
			private _barrel = createSimpleObject ["Land_MetalBarrel_F", [0,0,0]];
			
			_barrel attachTo [_vehicle, _attachPos];
			_barrel setVectorDir _vectorDir;
			_barrel setVectorUp _vectorUp;

		};

};