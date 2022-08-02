/*
    File: fn_handleBuildCancel.sqf
    Author: ColinM https://github.com/ColinM9991/KP-Liberation
    Date: 2022-07-20
    Last Update: 2022-07-20
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Cancels the build, if allowed.

    Returns:
        void
*/

if (buildtype isEqualTo 99) exitWith {
	hint "Cannot cancel"
};

build_confirmed = 3;
GRLIB_ui_notif = "";
hint localize "STR_CANCEL_HINT";