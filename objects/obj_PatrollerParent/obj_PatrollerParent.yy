{
    "id": "3d722df8-120e-43a7-abff-d5e21430611a",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_PatrollerParent",
    "eventList": [
        {
            "id": "a1031a53-7fc0-4c7a-9112-0f31e4e607c1",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "3d722df8-120e-43a7-abff-d5e21430611a"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "e6c4e7e8-0b8a-40b9-b6d8-2a8b2ed7f31f",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "62a3600e-7aa5-4a62-90b7-1de5e2c9c7a0",
            "propertyId": "6f99264f-8f71-492f-bf4d-fe100af69405",
            "value": "scr_PatrolHorizCollision"
        },
        {
            "id": "8a6fe10d-6eaf-46f6-8f07-4d9f1157ae6b",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "bd3fe793-2816-4b49-94e6-b3e0644b239e",
            "value": "scr_PatrolParentStateIdle"
        },
        {
            "id": "f904976b-2735-4e81-ab8b-d36f106431b8",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "f880f527-c761-4432-993f-9f0800e1b2ba",
            "value": "scr_PatrolParentStateMoving"
        },
        {
            "id": "039bccb6-755c-43ea-9a69-d8f8eb5db06c",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "440516e8-a7b3-4e61-996a-7eebecb8ff41",
            "value": "scr_PatrolParentStateJumping"
        },
        {
            "id": "2e86202e-e9a3-4d81-b8a3-25059aec04a6",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "baf13921-fcd0-4557-98e6-03296607539b",
            "value": "scr_PatrolParentStateFalling"
        },
        {
            "id": "777da1d5-0378-4295-8f18-fa47582f5e2e",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "d0382f87-f416-4c30-a2d4-4ade8290f50e",
            "value": "scr_PatrolParentStateAttacking"
        },
        {
            "id": "eea82643-5fd7-4091-96a6-ea60d558c717",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "b03e31f2-7d82-454a-bd6e-20ebd23fdeeb",
            "value": "scr_PatrolParentStateDefending"
        },
        {
            "id": "2cea40c9-af24-4906-8c75-e229ae574a31",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "6223a832-52ea-47dc-8174-713fe5676f03",
            "value": "scr_PatrolParentStateDying"
        },
        {
            "id": "b1dc4a0e-47c8-4284-bacb-269cc323846a",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "0533c279-6e45-41ed-a49a-197ac06ede2a",
            "value": "scr_PatrolParentStateDead"
        }
    ],
    "parentObjectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "74236509-62c0-4916-a08e-fc81d9abc39f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "RIGHT",
            "varName": "moveDirOnRestart",
            "varType": 0
        },
        {
            "id": "8aa1fa76-683a-4d70-834f-e0b5b741f8d9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "60",
            "varName": "minAttackInterval",
            "varType": 0
        },
        {
            "id": "44a46f26-3d83-4d65-b410-0a4f40cd6fc4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "150",
            "varName": "attackDistance",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}