/*
    File: fn_getBuildItemDetails.sqf
    Author: ColinM https://github.com/ColinM9991/KP-Liberation
    Date: 2022-07-28
    Last Update: 2022-07-28
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Retrieves the name and icon for a build item

    Parameter(s):
        _className      - The classname of the menu item
        _prices         - The prices of the menu item

    Returns:
        An array of the item details
        [Name, Icon, [Supplies, Ammo, Fuel]]
*/

params[
    ["_className", "", [[], ""]],
    ["_itemIndex", -1, [-1]]    
];

private _getItemDisplayName = {
    switch (_className) do {
        case FOB_box_typename: {localize "STR_FOBBOX";};
        case Arsenal_typename: {if (KP_liberation_mobilearsenal) then {localize "STR_ARSENAL_BOX";};};
        case Respawn_truck_typename: {if (KP_liberation_mobilerespawn) then {localize "STR_RESPAWN_TRUCK";};};
        case FOB_truck_typename: {localize "STR_FOBTRUCK";};
        case "cwr3_b_soldier": {localize "STR_Infantry_USA";};
        case "cwr3_b_soldier82": {localize "STR_Infantry_USA82";};
        case "cwr3_b_ranger": {localize "STR_Infantry_USAAB";};
        case "cwr3_b_uk_soldier": {localize "STR_Infantry_UK";};
        case "cwr3_b_usmc_soldier": {localize "STR_Infantry_USMC";};
        case "cwr3_o_soldier": {localize "STR_Infantry_SOV85";};
        case "cwr3_o_soldier82": {localize "STR_Infantry_SOV82";};
        case "cwr3_o_spetsnaz": {localize "STR_Infantry_SOVSPETSNAZ";};
        case "CUP_B_M1A1SA_Woodland_US_Army": {localize "STR_Armor_M1A1SA";};
        case "CUP_B_UH1D_slick_GER_KSK": {localize "STR_Air_UH1_BW";};
        case "cwr3_b_usmc_uh1": {localize "STR_Air_UH1_USMC";};
        case "cwr3_b_usmc_ah1f": {localize "STR_Air_AH1_USMC";};
        case "cwr3_b_ah64": {localize "STR_Air_AH64";};
        case "cwr3_b_ah64_hellfire": {localize "STR_Air_AH64_Hellfire";};
        case "CUP_B_GR9_DYN_GB": {localize "STR_Air_GR9";};
        case "Flag_White_F": {localize "STR_INDIV_FLAG";};
        case "Land_PaperBox_closed_F": {localize "STR_BuildingSupply";};
        case "Land_Photos_V1_F": {localize "STR_PHOTO1_MAGAZINE";};
        case "Land_Photos_V6_F": {localize "STR_PHOTO6_PINUP";};
        case KP_liberation_small_storage_building: {localize "STR_SMALL_STORAGE";};
        case KP_liberation_large_storage_building: {localize "STR_LARGE_STORAGE";};
        case KP_liberation_recycle_building: {localize "STR_RECYCLE_BUILDING";};
        case KP_liberation_air_vehicle_building: {localize "STR_HELI_BUILDING";};
        case KP_liberation_heli_slot_building: {localize "STR_HELI_SLOT";};
        case KP_liberation_plane_slot_building: {localize "STR_PLANE_SLOT";};
        default {getText (configFile >> "cfgVehicles" >> _className >> "displayName");};
    };
};

private _getSquadDisplayName = {
    params["_itemIndex"];

    squads_names select _itemIndex;
};

private _displayName = "";
private _icon = "";

if(_className isEqualType []) then { 
    _displayName = [_itemIndex] call _getSquadDisplayName;
} else {
    _displayName = [_className] call _getItemDisplayName;
    _icon = getText (configFile >> "CfgVehicles" >> _className >> "icon");
    if (isText (configFile >> "CfgVehicleIcons" >> _icon)) then 
    {
        _icon = getText (configFile >> "CfgVehicleIcons" >> _icon);
    };
};

[_displayName, _icon]