/*
    File: fn_buildAi.sqf
    Author: ColinM - https://github.com/ColinM9991/KP-Liberation
    Date: 2022-08-01
    Last Update: 2022-08-01
    License: MIT License - http://www.opensource.org/licenses/MIT
    
    Description:
        Builds an individual AI unit.
    
    Parameter(s):
        _className      - Classname for the item to build           [ARRAY, defaults to []]
        _supplyCost     - How many supplies this item costs         [NUMBER, defaults to 0]
        _ammoCost       - How much ammo this item costs             [NUMBER, defaults to 0]
        _fuelCost       - How much fuel this item costs             [NUMBER, defaults to 0]
        _buildType      - The build type, determined by the item    [NUMBER, defaults to -1]
    
    Returns:
        NONE
*/
params[
    ["_className", "", [""]],
    ["_supplyCost", 0, [0]],
    ["_ammoCost", 0, [0]],
    ["_fuelCost", 0, [0]],
	["_buildType", 0, [0]]
];

private _nearfob = [] call KPLIB_fnc_getNearestFob;
private _storage_areas = (_nearfob nearobjects (GRLIB_fob_range * 2)) select {(_x getVariable ["KP_liberation_storage_type",-1]) == 0};
private _group = createGroup GRLIB_side_friendly;

[_className, getPos player, group player] call KPLIB_fnc_createManagedUnit;

[_supplyCost, _ammoCost, _fuelCost, _className, _buildType, _storage_areas] remoteExec ["build_remote_call",2];