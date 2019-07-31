{
    "id": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_enemyParent",
    "eventList": [
        {
            "id": "277ef28d-8ff1-43bf-8cb1-bf667e1468d5",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "3d7b2056-82b8-4245-adf2-020b7fa8bb32"
        },
        {
            "id": "d867574f-022c-4774-a61d-79511c6c9fca",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "3d7b2056-82b8-4245-adf2-020b7fa8bb32"
        },
        {
            "id": "9a18d6a6-1763-4009-b6ba-b493cd4ec84a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "3d7b2056-82b8-4245-adf2-020b7fa8bb32"
        },
        {
            "id": "7262557e-0ca7-4659-9dd4-ebd4b2b5852e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "8d984489-f452-4b78-aa63-d91d2b42d0a2",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "3d7b2056-82b8-4245-adf2-020b7fa8bb32"
        },
        {
            "id": "59245507-49a8-49a9-9d79-9ffe8b456c6d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "76e1c1b3-92cf-4e45-b913-c7d07eeaadad",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "3d7b2056-82b8-4245-adf2-020b7fa8bb32"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "62a3600e-7aa5-4a62-90b7-1de5e2c9c7a0",
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
            "id": "be55e4ce-833a-48c4-bcd2-fcb6bc530e91",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hitPoints",
            "varType": 0
        },
        {
            "id": "d890f8ba-bb49-4d71-9adc-6e7acf028b47",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "250",
            "varName": "activationRange",
            "varType": 0
        },
        {
            "id": "c367d758-becc-4f2e-94b3-bab459348c37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "infectious",
            "varType": 3
        },
        {
            "id": "80059692-e5a4-48ea-98e8-5f5590a562a8",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "active",
            "varType": 3
        },
        {
            "id": "6f8ebc97-0ffa-41f3-a633-c5360e58cc06",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "s_IDLE",
            "varName": "initialState",
            "varType": 4
        },
        {
            "id": "bd3fe793-2816-4b49-94e6-b3e0644b239e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateIdleScript",
            "varType": 5
        },
        {
            "id": "f880f527-c761-4432-993f-9f0800e1b2ba",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateMovingScript",
            "varType": 5
        },
        {
            "id": "440516e8-a7b3-4e61-996a-7eebecb8ff41",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateJumpScript",
            "varType": 5
        },
        {
            "id": "baf13921-fcd0-4557-98e6-03296607539b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateFallScript",
            "varType": 5
        },
        {
            "id": "3d2d4671-9b58-4530-bcbf-d483952e5d7c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateMenacingScript",
            "varType": 5
        },
        {
            "id": "d0382f87-f416-4c30-a2d4-4ade8290f50e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateAttackScript",
            "varType": 5
        },
        {
            "id": "b03e31f2-7d82-454a-bd6e-20ebd23fdeeb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateDefendingScript",
            "varType": 5
        },
        {
            "id": "8060bcb0-5315-472b-b928-b1c4a2be74af",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateHitScript",
            "varType": 5
        },
        {
            "id": "f9448d38-2855-49df-8712-104184c05fdc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateBoardStruckScript",
            "varType": 5
        },
        {
            "id": "6223a832-52ea-47dc-8174-713fe5676f03",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateDyingScript",
            "varType": 5
        },
        {
            "id": "0533c279-6e45-41ed-a49a-197ac06ede2a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "stateDeadScript",
            "varType": 5
        },
        {
            "id": "f2562049-d3c5-4f41-8099-14b2ae2adac9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "hitByAmmoScript",
            "varType": 5
        },
        {
            "id": "54427283-bc64-40b4-bcef-3427097bb49b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "attackThreshold",
            "varType": 0
        },
        {
            "id": "5eaae57f-b022-4bdb-9b63-088d61a795b0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "boardSmackedScript",
            "varType": 5
        },
        {
            "id": "42a11090-6df9-451f-8997-4a9e2bfef87c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "sprintSpeedX",
            "varType": 0
        },
        {
            "id": "d1e20f90-7184-44e1-8514-f4aaad1488f1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "slopeSpeedX",
            "varType": 0
        },
        {
            "id": "438d8e24-61ba-4d13-b180-a9e8f32f72d6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "collidedWithSkaterScript",
            "varType": 5
        },
        {
            "id": "6cdef82c-f9ec-4704-9d9c-82f57a95bfed",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "hitBySkaterShieldScript",
            "varType": 5
        },
        {
            "id": "2a1fd468-3b01-47c4-8c03-82caa4025dcd",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "noSlope",
            "varType": 3
        },
        {
            "id": "146cc11e-6b11-45b5-be47-9b134b3d174a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hitImmobileTime",
            "varType": 0
        },
        {
            "id": "eaf74d8d-0c34-4703-8677-cdf8faab29f6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "scr_EmptyAssScript",
            "varName": "hitScript",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}