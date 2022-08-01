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

if (_buildType isEqualTo BUILD_TYPE_GROUPS) exitWith {
    [_className, _supplyCost, _ammoCost, _fuelCost, _buildType] call KPLIB_fnc_buildSquad;
};

if (_buildType isEqualTo BUILD_TYPE_INFANTRY) exitWith {
    [_className, _supplyCost, _ammoCost, _fuelCost, _buildType] call KPLIB_fnc_buildAi;
};

