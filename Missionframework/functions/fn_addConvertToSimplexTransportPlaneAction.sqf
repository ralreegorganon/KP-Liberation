/*
    File: fn_addConvertToSimplexTransportAction.sqf
    Author: ralreegorganon
    Date: 2023-12-03
    Last Update: 2023-12-03
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Add ACE action to object to convert into Simplex Transport

    Parameter(s):
        _obj - Object to add action to

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_obj", objNull, [objNull]]
];

if (isNull _obj) exitWith {["Null object given"] call BIS_fnc_error; false};
if (!canSuspend) exitWith {_this spawn KPLIB_fnc_addConvertToSimplexTransportPlaneAction};

_condition = {
    params ["_target", "_player", "_args"];
    private _isNotSimplexed = isNull (_target getVariable ["sss_entity",objNull]);
    private _noPlayers = {isPlayer _x} count crew _target == 0;
    private _hasDriver = alive driver _target;
    _isNotSimplexed && _noPlayers && _hasDriver
};

_statement = {
    params ["_target", "_player", "_args"];
    
    private _grp = createGroup [KPLIB_side_player, true];
    {
        _x join _grp;
    } forEach [crew _target];

    // [_target] call KPLIB_fnc_forceBluforCrew;
    [_target, getText (configFile >> "CfgVehicles" >> typeOf _target >> "displayName"), -1] call sss_transport_fnc_addPlane;
};

_action = ["ConvertToSimplexTransport","Convert To Simplex Transport","",_statement,_condition, {}] call ace_interact_menu_fnc_createAction;
[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

true
