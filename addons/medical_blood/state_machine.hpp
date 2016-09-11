class GVAR(stateMachine) {
    // Class properties have the same name as the corresponding function parameters
    // and code goes into strings.
    list = QUOTE(allUnits select {[_x] call FUNC(isBleeding)});
    skipNull = 1;

    class Bleeding {
        onState = QUOTE(call FUNC(onBleeding));
    };
};
