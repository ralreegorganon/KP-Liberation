/*
    File: test.sqf
    Author: ColinM - https://github.com/ColinM9991/KP-Liberation
    Date: 2022-08-01
    Last Update: 2022-08-01
    License: MIT License - http://www.opensource.org/licenses/MIT
    
    Description:
        No description added yet.
    
    Parameter(s):
        _localVariable - Description [DATATYPE, defaults to DEFAULTVALUE]
    
    Returns:
        NONE
*/
params["_player", "_joinedInProgress"];

//Author: ColinM

FUNCTION_GameOver = {
    "end1" call BIS_fnc_endMission;
};

if(_joinedInProgress) exitWith { call FUNCTION_GameOver };

//Author: Hudi

_saveLoadout = ["ace_arsenal_displayClosed", {
    player setVariable["loadout", getUnitLoadout player];
}] call CBA_fnc_addEventHandler;

player addEventHandler ["Respawn", {
    player setLoadout (player getVariable["loadout", []])
}];