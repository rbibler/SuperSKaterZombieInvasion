{
    "id": "ab534e9a-4f04-4bc2-ad56-bda342e896ee",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_enemyGull",
    "eventList": [
        {
            "id": "e3aebe13-a867-4946-a98c-7c3bf59c47a4",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "ab534e9a-4f04-4bc2-ad56-bda342e896ee"
        },
        {
            "id": "cdd98cb6-c074-4df1-b8c5-8d67901363f3",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "ab534e9a-4f04-4bc2-ad56-bda342e896ee"
        },
        {
            "id": "91fc6377-ad5a-4504-b3c5-817da3b906e6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "ab534e9a-4f04-4bc2-ad56-bda342e896ee"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "be135fa3-de03-412e-b2bc-3dea0812c4a8",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "bd3fe793-2816-4b49-94e6-b3e0644b239e",
            "value": "scr_GullStateIdle"
        },
        {
            "id": "5056b8c6-c91e-44c0-a0b3-a0712f79911a",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "f880f527-c761-4432-993f-9f0800e1b2ba",
            "value": "gullStateMovingScript"
        },
        {
            "id": "c608aaed-fc88-4591-b4fa-cfd5fb32112f",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "440516e8-a7b3-4e61-996a-7eebecb8ff41",
            "value": "gullStateJumpScript"
        },
        {
            "id": "ee417300-e492-4710-b48a-1aeab8ec7032",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "baf13921-fcd0-4557-98e6-03296607539b",
            "value": "gullStateFallScript"
        },
        {
            "id": "3043bea4-8d43-4cf6-9aa5-d6bafd426537",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "d0382f87-f416-4c30-a2d4-4ade8290f50e",
            "value": "noone"
        },
        {
            "id": "b3887b3f-9e2b-4d5b-9607-8af0c67969f2",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "0533c279-6e45-41ed-a49a-197ac06ede2a",
            "value": "gullStateDeadScript"
        },
        {
            "id": "624869d0-6ea7-4345-b1de-608fc77c63be",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "8060bcb0-5315-472b-b928-b1c4a2be74af",
            "value": "gullStateHitScript"
        },
        {
            "id": "e885459e-3ea2-492e-b8dd-27c12e614dda",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "f2562049-d3c5-4f41-8099-14b2ae2adac9",
            "value": "gullHitByAmmoScript"
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
            "id": "eb3bdd0c-2104-42b6-93e8-95b7c77dcb9c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "flySpeedX",
            "varType": 0
        },
        {
            "id": "6f1cada4-ea16-4084-a3ce-9258a2f84260",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-1.5",
            "varName": "flySpeedY",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "023cb9db-edfa-4990-ac54-3801261fbf89",
    "visible": true
}