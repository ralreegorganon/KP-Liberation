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
        case "Flag_White_F": {localize "STR_INDIV_FLAG";};
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