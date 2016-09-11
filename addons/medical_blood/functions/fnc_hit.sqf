/*
 * Author: Glowbal
 * Handle unit hit eventhandler
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: caused by <OBJECT>
 * 2: damage <NUMBER>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_causedBy", "_damage"];

// Calculate bulletDirection
private _unitPos = getPosATL _unit;
private _causedByPos = getPosATL _causedBy;

private _bulletDir = ((_unitPos select 0) - (_causedByPos select 0)) atan2 ((_unitPos select 1) - (_causedByPos select 1));

[QGVAR(spurt), [_unit, _bulletDir, _damage]] call CBA_fnc_globalEvent;
