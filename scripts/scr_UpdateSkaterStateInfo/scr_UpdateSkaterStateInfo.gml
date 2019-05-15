var stateNum = stateID & 0xFF00;
currentMovementState = stateNum == FOOT ? ON_FOOT_STATE : (stateNum == SKATE ? SKATE_STATE : VEHICLE_STATE);