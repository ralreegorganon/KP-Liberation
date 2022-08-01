/*
    File: fn_postInit.sqf
    Author: ColinM - https://github.com/ColinM9991/KP-Liberation
    Date: 2022-08-01
    Last Update: 2022-08-02
    License: MIT License - http://www.opensource.org/licenses/MIT
    
    Description:
        No description added yet.
    
    Parameter(s):
        _localVariable - Description [DATATYPE, defaults to DEFAULTVALUE]
    
    Returns:
        NONE
*/

KPLIB_isBuilding = false;
KPLIB_hasCancelledBuild = false;
KPLIB_buildingInProgress = false;
KPLIB_buildType = -1;
KPLIB_buildPreview = objNull;

build_rotation = 0;
build_elevation = 0;
build_distance = 0;
build_vector = false;