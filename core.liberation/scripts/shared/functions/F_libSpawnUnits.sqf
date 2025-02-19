params [
    "_spawnpos",                    // position to spawn
    ["_classname", []],             // array of classname to create
    ["_side", GRLIB_side_enemy],    // side of units group
    ["_type", "infantry"]           // type of unit 
];

private ["_unit", "_validpos", "_max_try"];
if (count _classname == 0) exitWith {diag_log ["DBG: Error libunit ", _this]};
private _grp = createGroup [_side, true];
private _nb_unit = round ((count _classname) * ([] call F_adaptiveOpforFactor));

{
	if ( (count units _grp) < _nb_unit) then {
		_validpos = zeropos;
		_max_try = 10;
        
        if (_type == "divers") then {
            _validpos = _spawnpos vectorAdd [floor(random 20), floor(random 20), -3];
        };

		while { (_validpos isEqualTo zeropos) && _max_try > 0 } do {
			_validpos = [_spawnpos, 0, GRLIB_capture_size, 1, 0, 0, 0, [], [zeropos, zeropos]] call BIS_fnc_findSafePos;
			_max_try = _max_try - 1;
		};

		if (!(_validpos isEqualTo zeropos)) then {
			_unit = _grp createUnit [_x, _validpos, [], 5, "NONE"];
			_unit addMPEventHandler ["MPKilled", {_this spawn kill_manager}];
			[_unit] joinSilent _grp;
			if (_type == "militia") then {[ _unit ] call loadout_militia};
			[ _unit ] call reammo_ai;
            _unit switchMove "amovpknlmstpsraswrfldnon";
            sleep 0.1;
		};
	};
	sleep 0.1;
} foreach _classname;

_grp;
