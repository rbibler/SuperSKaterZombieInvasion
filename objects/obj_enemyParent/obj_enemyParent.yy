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
            "id": "abc7ea8a-977b-4905-bb62-e88d9803572a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "94c67c4f-47d8-4ad3-b4c2-c4f1ddd7a8af",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "3d7b2056-82b8-4245-adf2-020b7fa8bb32"
        },
        {
            "id": "f79a1fdf-1143-410a-8907-49cf76007d18",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "678fee8a-8cb5-4ca1-8c61-d9cd099f6a0f",
            "enumb": 0,
            "eventtype": 4,
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
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "ed14a131-953f-411a-8370-232b4492166c",
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
            "id": "bd3fe793-2816-4b49-94e6-b3e0644b239e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
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
            "value": "0",
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
            "value": "0",
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
            "value": "0",
            "varName": "stateFallScript",
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
            "value": "0",
            "varName": "stateAttackScript",
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
            "value": "0",
            "varName": "stateDeadScript",
            "varType": 5
        },
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
            "id": "8060bcb0-5315-472b-b928-b1c4a2be74af",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "stateHitScript",
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
            "value": "0",
            "varName": "hitByAmmoScript",
            "varType": 5
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
            "id": "b03e31f2-7d82-454a-bd6e-20ebd23fdeeb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "stateDefendingScript",
            "varType": 5
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
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}