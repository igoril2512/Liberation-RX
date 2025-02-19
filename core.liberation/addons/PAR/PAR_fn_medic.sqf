params ["_wnded"];

private _bros = allunits select {(_x getVariable ["PAR_Grp_ID","0"]) == (_wnded getVariable ["PAR_Grp_ID","1"])};
private _medics = _bros select {
  !isPlayer _x && _x != _wnded &&
  alive _x && speed (vehicle _x) <= 20 &&
  round (_x distance2D _wnded) <= 600 &&
  (getPosATL _x select 2) <= 20 &&
  (!(objectParent _x iskindof "Steerable_Parachute_F")) &&
  lifeState _x != "INCAPACITATED" &&
  isNil {_x getVariable "PAR_busy"}
};

// PAR only medic
if (GRLIB_revive == 1) then { _medics = _medics select {[_x] call PAR_is_medic} };
// PAR Medikit/Firstkit
if (GRLIB_revive == 2) then { _medics = _medics select {[_x] call PAR_has_medikit} };

if (count _medics == 0) exitWith {
  _wnded setVariable ["PAR_myMedic", nil];
  _msg = format [localize "STR_PAR_MD_01", name _wnded];
  [_wnded, _msg] call PAR_fn_globalchat;

  if (GRLIB_revive in [1,2]) then {
    _msg = localize "STR_PAR_MD_04";
    [_wnded, _msg] call PAR_fn_globalchat;
  };

  _lst = _bros select {!isPlayer _x && alive _x && lifeState _x != "INCAPACITATED"};
  _msg = format [localize "STR_PAR_MD_02", count (_lst)];
  [_wnded, _msg] call PAR_fn_globalchat;
};

private _medics_lst = _medics apply {[_x distance2D _wnded, _x]};
_medics_lst sort true;
private _medic = _medics_lst select 0 select 1;

private _msg = format [localize "STR_PAR_MD_03", name _wnded, name _medic, round (_medics_lst select 0 select 0)];
[_wnded, _msg] call PAR_fn_globalchat;

_medic setVariable ["PAR_busy", true];
_wnded setVariable ["PAR_myMedic", _medic];

if (count units _medic > 1) then {
  _medic setVariable ["PAR_AIgrp", group _medic];
  _medic setVariable ["isLeader", leader _medic == _medic];
};
_medic