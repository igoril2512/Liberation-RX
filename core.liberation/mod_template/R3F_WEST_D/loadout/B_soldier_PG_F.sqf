_unit = _this select 0;

//  "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

//  "Add weapons";
_unit addWeapon "R3F_Famas_G2_HG_DES";
_unit addPrimaryWeaponItem "R3F_POINTEUR_SURB_DES";
_unit addPrimaryWeaponItem "R3F_AIMPOINT_DES";
_unit addPrimaryWeaponItem "R3F_30Rnd_556x45_FAMAS";
_unit addWeapon "R3F_PAMAS";
_unit addHandgunItem "R3F_15Rnd_9x19_PAMAS";

//  "Add containers";
_unit forceAddUniform "R3F_uniform_f1_DA";
_unit addVest "R3F_veste_TAN";
_unit addBackpack "B_Parachute";

//  "Add binoculars";
_unit addWeapon "Binocular";

//  "Add items to containers";
_unit addItemToUniform "FirstAidKit";
_unit addItemToUniform "R3F_30Rnd_556x45_FAMAS";
_unit addItemToVest "R3F_15Rnd_9x19_PAMAS";
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "R3F_30Rnd_556x45_FAMAS";};
_unit addHeadgear "R3F_casque_felin_DA";
_unit addGoggles "G_Tactical_Clear";

//  "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
