/*
    File: fn_handleBuildPlacement.sqf
    Author: ColinM https://github.com/ColinM9991/KP-Liberation
    Date: 2022-07-20
    Last Update: 2022-07-20
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Builds the object, repeating the next build if requested and allowed.

    Returns:
        void
*/
params[
	["_shouldRepeat", false, [false]]];

if (buildtype isEqualTo 6 && {
	_shouldRepeat
}) then {
	repeatbuild = true;
};

if(!_shouldRepeat) then {
    build_rotation = 0;
    build_elevation = 0;
    build_distance = 0;
};

build_confirmed = 2;
hint localize "STR_CONFIRM_HINT";