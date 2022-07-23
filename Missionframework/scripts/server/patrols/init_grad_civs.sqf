["grad_civs_civKilled", {
    params ["_deathPos", "_killer", "_civilian"];

    [_civilian, _killer] spawn kill_manager;
}] call CBA_fnc_addEventHandler;

waitUntil {!isNil "GRLIB_all_fobs"};
waitUntil {!isNil "sectors_military"};
waitUntil {!isNil "sectors_factory"};
waitUntil {!isNil "sectors_tower"};

_excludedZones = [];
{
    _excludedZones pushBack (getMarkerPos _x);
} forEach (["startbase_marker"] + sectors_military + sectors_tower + sectors_factory);

{
    [[_x, 150, 150, 0, false]] call grad_civs_common_fnc_addExclusionZone; 
} forEach (_excludedZones + GRLIB_all_Fobs);