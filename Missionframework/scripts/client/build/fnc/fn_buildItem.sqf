/*
    File: fn_buildItem.sqf
    Author: ColinM - https://github.com/ColinM9991/KP-Liberation
    Date: 2022-08-01
    Last Update: 2022-08-01
    License: MIT License - http://www.opensource.org/licenses/MIT
    
    Description:
        Builds the item.
    
    Parameter(s):
        _className      - Classname for the item to build           [STRING or Array, defaults to ""]
        _supplyCost     - How many supplies this item costs         [NUMBER, defaults to 0]
        _ammoCost       - How much ammo this item costs             [NUMBER, defaults to 0]
        _fuelCost       - How much fuel this item costs             [NUMBER, defaults to 0]
        _buildType      - The build type, determined by the item    [NUMBER, defaults to -1]
        _buildManned    - Should it be built with units             [BOOLEAN, defaults to false]
    
    Returns:
        NONE
*/
#ifndef BUILD_TYPE_BUILDING
#include "..\ui\build_types.hpp"
#endif

params[
    ["_className", "", [[], ""]],
    ["_supplyCost", 0, [0]],
    ["_ammoCost", 0, [0]],
    ["_fuelCost", 0, [0]],
    ["_buildType", -1, [-1]],
    ["_buildManned", false, [false]]
];

private _nearfob = [] call KPLIB_fnc_getNearestFob;
private _storage_areas = (_nearfob nearobjects (GRLIB_fob_range * 2)) select {(_x getVariable ["KP_liberation_storage_type",-1]) == 0};

private _processPurchase = {
    [_supplyCost, _ammoCost, _fuelCost, _className, _buildType, _storage_areas] remoteExec ["build_remote_call",2];
};

if (_buildType isEqualTo BUILD_TYPE_GROUPS) exitWith {
    [_className, _supplyCost, _ammoCost, _fuelCost] call KPLIB_fnc_buildSquad;
    call _processPurchase;
};

if (_buildType isEqualTo BUILD_TYPE_INFANTRY) exitWith {
    [_className, _supplyCost, _ammoCost, _fuelCost] call KPLIB_fnc_buildAi;
    call _processPurchase;
};

// TODO
// Ghost vehicle
// KeyDown Handler
// Confirm Build
// Manned Build
// Repeat Build
// No payment for FOB