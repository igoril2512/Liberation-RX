//--- LRX Fetch Misson Parameters ----------------------------------------
GRLIB_introduction = ["Introduction",1] call bis_fnc_getParamValue;
GRLIB_deployment_cinematic = ["DeploymentCinematic",1] call bis_fnc_getParamValue;
GRLIB_unitcap = ["Unitcap",1] call bis_fnc_getParamValue;
GRLIB_fancy_info = ["FancyInfo",1] call bis_fnc_getParamValue;
GRLIB_hide_opfor = ["HideOpfor",0] call bis_fnc_getParamValue;
GRLIB_thermic = ["Thermic",1] call bis_fnc_getParamValue;
GRLIB_disable_death_chat = ["DeathChat", 1] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_mod_preset_west = ["ModPresetWest", 0] call bis_fnc_getParamValue;
GRLIB_mod_preset_east = ["ModPresetEast", 0] call bis_fnc_getParamValue;
GRLIB_enable_arsenal = ["EnableArsenal",1] call bis_fnc_getParamValue;
GRLIB_limited_arsenal = ["LimitedArsenal",1] call bis_fnc_getParamValue;
GRLIB_filter_arsenalCUP = ["EnableFilterCUP",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalRHS = ["EnableFilterRHS",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalR3F = ["EnableFilterR3F",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalEJW = ["EnableFilterEJW",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalGM = ["EnableFilterGM",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalOPTRE = ["EnableFilterOPTRE",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalSOG = ["EnableFilterSOG",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenal3CB = ["EnableFilter3CB",0] call bis_fnc_getParamValue;
GRLIB_filter_arsenalCWR = ["EnableFilterCWR",0] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_forced_loadout = ["ForcedLoadout",1] call bis_fnc_getParamValue;
GRLIB_opfor_english = ["EnglishOpfor", 0] call bis_fnc_getParamValue;
GRLIB_fob_type = [ "FobType",0] call bis_fnc_getParamValue;
GRLIB_huron_type = [ "HuronType", 0] call bis_fnc_getParamValue;
GRLIB_maximum_fobs = [ "MaximumFobs",5] call bis_fnc_getParamValue;
GRLIB_autodanger = [ "Autodanger",0] call bis_fnc_getParamValue;
GRLIB_passive_income = ["PassiveIncome",0] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_difficulty_modifier = ["Difficulty",1] call bis_fnc_getParamValue;
GRLIB_csat_aggressivity = ["Aggressivity",1] call bis_fnc_getParamValue;
GRLIB_adaptive_opfor = ["AdaptToPlayercount",1] call bis_fnc_getParamValue;
GRLIB_sector_radius = ["SectorRadius",0] call bis_fnc_getParamValue;
GRLIB_day_factor = ["DayDuration",1] call bis_fnc_getParamValue;
GRLIB_night_factor = ["NightDuration",1] call bis_fnc_getParamValue;
GRLIB_weather_param = ["Weather",4] call bis_fnc_getParamValue;
GRLIB_resources_multiplier = ["ResourcesMultiplier",1] call bis_fnc_getParamValue;
GRLIB_max_spawn_point = ["MaxSpawnPoint",2] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_fatigue = ["Fatigue",0] call bis_fnc_getParamValue;
GRLIB_revive = ["Revive",3] call bis_fnc_getParamValue;
GRLIB_tk_mode = ["TK_mode",1] call bis_fnc_getParamValue;
GRLIB_tk_count = ["TK_count",4] call bis_fnc_getParamValue;
GRLIB_squad_size = ["SquadSize",3] call bis_fnc_getParamValue;
GRLIB_max_squad_size = ["MaxSquadSize",7] call bis_fnc_getParamValue;
GRLIB_permissions_param = ["Permissions",1] call bis_fnc_getParamValue;
GRLIB_permission_vehicles = ["EnableLock",1] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_civilian_activity = ["Civilians",1] call bis_fnc_getParamValue;
GRLIB_wildlife_manager = ["Wildlife",1] call bis_fnc_getParamValue;
GRLIB_Patrol_manager = ["Patrol",1] call bis_fnc_getParamValue;
GRLIB_ammo_bounties = [ "AmmoBounties",0] call bis_fnc_getParamValue;
GRLIB_civ_penalties = [ "CivPenalties",0] call bis_fnc_getParamValue;
GRLIB_halo_param = ["HaloJump",1] call bis_fnc_getParamValue;
GRLIB_blufor_defenders = [ "BluforDefenders",1] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_admin_menu = ["AdminMenu",1] call bis_fnc_getParamValue;
GRLIB_cleanup_vehicles = ["CleanupVehicles",1800] call bis_fnc_getParamValue;
GRLIB_autosave_timer = ["AutoSave",3600] call bis_fnc_getParamValue;
GRLIB_use_whitelist = ["Whitelist",1] call bis_fnc_getParamValue;
//------------------------------------------------------------------------
GRLIB_param_wipe_savegame_1 = ["WipeSave1",0] call bis_fnc_getParamValue;
GRLIB_param_wipe_savegame_2 = ["WipeSave2",0] call bis_fnc_getParamValue;
GRLIB_param_wipe_keepscore = ["KeepScore",0] call bis_fnc_getParamValue;
GRLIB_force_load = ["ForceLoading", 0] call bis_fnc_getParamValue;
GRLIB_remote_sensors = [ "DisableRemoteSensors",0] call bis_fnc_getParamValue;
//------------------------------------------------------------------------

// Define constant
[] call compileFinal preprocessFileLineNUmbers "gameplay_constants.sqf";

// Classename MOD source
[] call compileFinal preprocessFileLineNUmbers "mod_template\mod_init.sqf";
if (isNil "GRLIB_mod_west") then { GRLIB_mod_west = GRLIB_mod_list_west select GRLIB_mod_preset_west };
if (isNil "GRLIB_mod_east") then { GRLIB_mod_east = GRLIB_mod_list_east select GRLIB_mod_preset_east };
GRLIB_r1 = "&#108;&#105;&#98;&#101;&#114;&#97;&#116;&#105;&#111;&#110;";
GRLIB_r2 = "&#114;&#120;";
GRLIB_r3 = "&#76;&#82;&#88;&#32;&#73;&#110;&#102;&#111;";

// Check wrong sides
if (GRLIB_force_load == 0 && GRLIB_mod_west == GRLIB_mod_east) then { abort_loading = true };
if (abort_loading) exitWith { abort_loading_msg = format [
	"********************************\n
	FATAL! - Invalid Side selection !\n\n
	side West (%1) conflict with side East (%2)\n\n
	Loading Aborted to protect data integrity.\n
	Correct the Side selection.\n
	*********************************", GRLIB_mod_west, GRLIB_mod_east];
};

// Detect Addons
GRLIB_ACE_enabled = isClass(configFile >> "cfgPatches" >> "ace_main"); // Returns true if ACE is enabled
GRLIB_ACE_medical_enabled = isClass(configFile >> "cfgPatches" >> "ace_medical"); // Returns true if ACE Medical is enabled
GRLIB_ACRE_enabled = isClass(configFile >> "cfgPatches" >> "acre_main"); // Returns true if ACRE is enabled
GRLIB_OPTRE_enabled = isClass(configFile >> "cfgPatches" >> "OPTRE_Core"); // Returns true if OPTRE is enabled
GRLIB_GM_enabled = isClass(configFile >> "cfgPatches" >> "gm_Core"); // Returns true if GlobMob is enabled
GRLIB_CUPW_enabled = isClass(configFile >> "CfgPatches" >> "CUP_Weapons_AK"); // Returns true if CUP Weapons is enabled
GRLIB_CUPU_enabled = isClass(configFile >> "CfgPatches" >> "CUP_Creatures_Extra"); // Returns true if CUP Units is enabled
GRLIB_CUPV_enabled = isClass(configFile >> "CfgPatches" >> "CUP_AirVehciles_AH1Z"); // Returns true if CUP Vehicles is enabled
GRLIB_EJW_enabled = isClass(configFile >> "CfgPatches" >> "Ej_u100"); // Returns true if EricJ Weapons is enabled
GRLIB_RHS_enabled = isClass(configFile >> "CfgPatches" >> "rhs_main"); // Returns true if RHS is enabled
GRLIB_R3F_enabled = isClass(configFile >> "CfgPatches" >> "r3f_armes"); // Returns true if R3F is enabled
GRLIB_AMF_enabled = isClass(configFile >> "CfgPatches" >> "AMF_Patches"); // Returns true if AMF is enabled
GRLIB_SOG_enabled = isClass(configFile >> "CfgPatches" >> "vn_misc"); // Returns true if SOG is enabled
GRLIB_3CB_enabled = isClass(configFile >> "CfgMods" >> "UK3CB_BAF_Weapons"); // Returns true if UK3 CB is enabled
GRLIB_CWR_enabled = isClass(configFile >> "CfgMods" >> "cwr3_dlc"); // Returns true if CWR3 is enabled

// Check side Addon
if ( !GRLIB_EJW_enabled && "EJW" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( (!GRLIB_CUPU_enabled || !GRLIB_CUPV_enabled) && "CP_BAF_DES" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( (!GRLIB_CUPU_enabled || !GRLIB_CUPV_enabled) && "CP_TA" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_RHS_enabled && "RHS_AFRF" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_RHS_enabled && "RHS_USAF" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_GM_enabled && "GM_WEST" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_GM_enabled && "GM_WEST_WINT" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_GM_enabled && "GM_EAST" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_GM_enabled && "GM_EAST_WINT" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( (!GRLIB_R3F_enabled || !GRLIB_AMF_enabled) && "R3F_WEST_D" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( (!GRLIB_R3F_enabled || !GRLIB_AMF_enabled) && "R3F_WEST_W" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_SOG_enabled && "SOG_USA" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( !GRLIB_SOG_enabled && "SOG_VIETCONG" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( (!GRLIB_CWR_enabled || !GRLIB_CUPW_enabled) && "CWR3_US" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
if ( (!GRLIB_CWR_enabled || !GRLIB_CUPW_enabled) && "CWR3_SOV" in [GRLIB_mod_west, GRLIB_mod_east]) then { abort_loading = true };
// + 3cb check

if (abort_loading) exitWith { abort_loading_msg = format [
	"********************************\n
	FATAL! - Invalid Side selection !\n\n
	Missing MOD Addons for side West (%1) or side East (%2)\n\n
	Loading Aborted to protect data integrity.\n
	Correct the Side selection.\n
	*********************************", GRLIB_mod_west, GRLIB_mod_east];
};

// Overide Huron type
if ( GRLIB_mod_west in ["A3_BLU", "A3_IND"]) then {
	switch (GRLIB_huron_type) do {
		case 1: {huron_typename = "B_Heli_Transport_03_unarmed_F" };
		case 2: {huron_typename = "I_Heli_Transport_02_F" };
		case 3: {huron_typename = "B_Heli_Transport_01_F" };
	};
};

// ACE
if ( GRLIB_ACE_enabled ) then { GRLIB_fancy_info = 0 };  // Disable Fancy if ACE present
if ( GRLIB_ACE_medical_enabled ) then { GRLIB_revive = 0; GRLIB_fatigue = 1  };  // Disable PAR/Fatigue if ACE Medical is present

if ( GRLIB_fatigue == 1 ) then { GRLIB_fatigue = true } else { GRLIB_fatigue = false };
if ( GRLIB_introduction == 1 ) then { GRLIB_introduction = true } else { GRLIB_introduction = false };
if ( GRLIB_deployment_cinematic == 1 ) then { GRLIB_deployment_cinematic = true } else { GRLIB_deployment_cinematic = false };
if ( GRLIB_admin_menu == 1 ) then { GRLIB_admin_menu = true } else { GRLIB_admin_menu = false };
if ( GRLIB_hide_opfor == 1 ) then { GRLIB_hide_opfor = true } else { GRLIB_hide_opfor = false };
if ( GRLIB_enable_arsenal == 1 ) then { GRLIB_enable_arsenal = true } else { GRLIB_enable_arsenal = false };
if ( GRLIB_limited_arsenal == 1 ) then { GRLIB_limited_arsenal = true } else { GRLIB_limited_arsenal = false };
if ( GRLIB_filter_arsenalCUP == 1 ) then { GRLIB_filter_arsenalCUP = true } else { GRLIB_filter_arsenalCUP = false };
if ( GRLIB_filter_arsenalRHS == 1 ) then { GRLIB_filter_arsenalRHS = true } else { GRLIB_filter_arsenalRHS = false };
if ( GRLIB_filter_arsenalR3F == 1 ) then { GRLIB_filter_arsenalR3F = true } else { GRLIB_filter_arsenalR3F = false };
if ( GRLIB_filter_arsenalEJW == 1 ) then { GRLIB_filter_arsenalEJW = true } else { GRLIB_filter_arsenalEJW = false };
if ( GRLIB_filter_arsenalGM == 1 ) then { GRLIB_filter_arsenalGM = true } else { GRLIB_filter_arsenalGM = false };
if ( GRLIB_filter_arsenalOPTRE == 1 ) then { GRLIB_filter_arsenalOPTRE = true } else { GRLIB_filter_arsenalOPTRE = false };
if ( GRLIB_filter_arsenalSOG == 1 ) then { GRLIB_filter_arsenalSOG = true } else { GRLIB_filter_arsenalSOG = false };
if ( GRLIB_filter_arsenal3CB == 1 ) then { GRLIB_filter_arsenal3CB = true } else { GRLIB_filter_arsenal3CB = false };
if ( GRLIB_filter_arsenalCWR == 1 ) then { GRLIB_filter_arsenalCWR = true } else { GRLIB_filter_arsenalCWR = false };
if ( GRLIB_permission_vehicles == 1 ) then { GRLIB_permission_vehicles = true } else { GRLIB_permission_vehicles = false };
if ( GRLIB_adaptive_opfor == 1 ) then { GRLIB_adaptive_opfor = true } else { GRLIB_adaptive_opfor = false };
if ( GRLIB_passive_income == 1 ) then { GRLIB_passive_income = true } else { GRLIB_passive_income = false };
if ( GRLIB_permissions_param == 1 ) then { GRLIB_permissions_param = true } else { GRLIB_permissions_param = false };
if ( GRLIB_use_whitelist == 1 ) then { GRLIB_use_whitelist = true } else { GRLIB_use_whitelist = false };
if ( GRLIB_ammo_bounties == 1 ) then { GRLIB_ammo_bounties = true } else { GRLIB_ammo_bounties = false };
if ( GRLIB_civ_penalties == 1 ) then { GRLIB_civ_penalties = true } else { GRLIB_civ_penalties = false };
if ( GRLIB_blufor_defenders == 1 ) then { GRLIB_blufor_defenders = true } else { GRLIB_blufor_defenders = false };
if ( GRLIB_autodanger == 1 ) then { GRLIB_autodanger = true } else { GRLIB_autodanger = false };
if ( GRLIB_thermic == 1 ) then { GRLIB_thermic = true } else { GRLIB_thermic = false };
if ( GRLIB_opfor_english == 1 ) then { GRLIB_opfor_english = true } else { GRLIB_opfor_english = false };
if ( GRLIB_disable_death_chat == 1 ) then { GRLIB_disable_death_chat = true } else { GRLIB_disable_death_chat = false };

// Overide sector radius
if (GRLIB_sector_radius != 0) then { GRLIB_sector_size = GRLIB_sector_radius };

// Check MOD
GRLIB_mod_enabled = false;
GRLIB_filter_arsenal = false;
GRLIB_MOD_signature = [];

// Arsenal MOD filters
if ( GRLIB_OPTRE_enabled && GRLIB_filter_arsenalOPTRE ) then { GRLIB_MOD_signature append ["optre_"]; GRLIB_mod_enabled = true };
if ( GRLIB_EJW_enabled && GRLIB_filter_arsenalEJW ) then { GRLIB_MOD_signature append ["ej_"]; GRLIB_mod_enabled = true };
if ( GRLIB_GM_enabled && GRLIB_filter_arsenalGM) then { GRLIB_MOD_signature append ["gm_"]; GRLIB_mod_enabled = true };
if ( GRLIB_CUPW_enabled && GRLIB_filter_arsenalCUP) then { GRLIB_MOD_signature append ["cup_"]; GRLIB_mod_enabled = true };
if ( GRLIB_RHS_enabled && GRLIB_filter_arsenalRHS) then { GRLIB_MOD_signature append ["rhs"]; GRLIB_mod_enabled = true };
if ( GRLIB_R3F_enabled && GRLIB_filter_arsenalR3F) then { GRLIB_MOD_signature append ["r3f_", "amf_"]; GRLIB_mod_enabled = true };
if ( GRLIB_SOG_enabled && GRLIB_filter_arsenalSOG) then { GRLIB_MOD_signature append ["vn_"]; GRLIB_mod_enabled = true };
if ( GRLIB_3CB_enabled && GRLIB_filter_arsenal3CB) then { GRLIB_MOD_signature append ["uk3cb_"]; GRLIB_mod_enabled = true };
if ( GRLIB_CWR_enabled && GRLIB_filter_arsenalCWR) then { GRLIB_MOD_signature append ["cwr3"]; GRLIB_mod_enabled = true };
