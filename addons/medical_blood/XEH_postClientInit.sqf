#include "script_component.hpp"

[configFile >> QGVAR(stateMachine)] call CBA_statemachine_fnc_createFromConfig;
[QGVAR(spurt), {_this call FUNC(spurt)}] call CBA_fnc_addEventHandler;

["CAManBase", "hit", {
    params ["_unit"];
    _this call FUNC(hit);
}] call CBA_fnc_addClassEventHandler;
