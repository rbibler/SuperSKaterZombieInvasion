var stateNum = stateID & 0xF000;
currentMovementState = stateNum == FOOT ? ON_FOOT_STATE : (stateNum == SKATE ? SKATE_STATE : VEHICLE_STATE);
currentVehicle = (stateID & 0xF00) >> 8;
