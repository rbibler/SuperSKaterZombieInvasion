{
    "id": "79137575-6a47-40d5-93a5-b386fb73b89e",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_explodingSlimeball",
    "eventList": [
        {
            "id": "c8faeed9-7dad-4ca5-98f3-368076b7f1ab",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "79137575-6a47-40d5-93a5-b386fb73b89e"
        },
        {
            "id": "59213869-2ad5-462b-81f7-02024bc9e325",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "79137575-6a47-40d5-93a5-b386fb73b89e"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "0199b1ce-c1da-40c0-875e-3e2d206a34a0",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "be55e4ce-833a-48c4-bcd2-fcb6bc530e91",
            "value": "15"
        },
        {
            "id": "108bbeca-e99e-450e-bab5-1fc7ab420184",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "f2562049-d3c5-4f41-8099-14b2ae2adac9",
            "value": "explodingSlimeballHitByAmmoScript"
        },
        {
            "id": "a11f5751-f6a5-4309-a0cb-b162d35ad113",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "c367d758-becc-4f2e-94b3-bab459348c37",
            "value": "True"
        },
        {
            "id": "5b787a05-9ea2-44e4-8e4f-1ae2d41bc765",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "54427283-bc64-40b4-bcef-3427097bb49b",
            "value": "100"
        },
        {
            "id": "208fa7ba-1a62-4662-9484-83404ddc904f",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "bd3fe793-2816-4b49-94e6-b3e0644b239e",
            "value": "scr_ExplodingSlimeballStateIdle"
        },
        {
            "id": "9da69a84-09d7-43ce-965f-a14ac95fe1df",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "440516e8-a7b3-4e61-996a-7eebecb8ff41",
            "value": "scr_ExplodingSlimeballStateJumping"
        },
        {
            "id": "ae22e77a-305a-49ab-a9ec-bcee50600ddb",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "3d2d4671-9b58-4530-bcbf-d483952e5d7c",
            "value": "scr_ExplodingSlimeballStateMenacing"
        },
        {
            "id": "fd07ffed-16f4-4d50-9a82-805cccd52d7b",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "d0382f87-f416-4c30-a2d4-4ade8290f50e",
            "value": "scr_ExplodingSlimeballStateAttacking"
        },
        {
            "id": "ff1c17ba-cdd5-40df-933e-e2da4e5cfa3a",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "8060bcb0-5315-472b-b928-b1c4a2be74af",
            "value": "scr_ExplodingSlimeballStateHit"
        },
        {
            "id": "a44c259c-5caf-4e94-b6cb-02a281f4e788",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "0533c279-6e45-41ed-a49a-197ac06ede2a",
            "value": "scr_ExplodingSlimeballStateDead"
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
            "id": "1e6260a8-c18a-4cf6-816a-bcb5b9e651b3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "6",
            "varName": "projSpeed",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "ba8a3b02-fdca-47c7-a632-f75e833f751d",
    "visible": true
}