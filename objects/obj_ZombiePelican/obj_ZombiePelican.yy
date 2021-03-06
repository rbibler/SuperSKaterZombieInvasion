{
    "id": "385fe259-971b-49b7-b685-27c0205009fd",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_ZombiePelican",
    "eventList": [
        {
            "id": "54c18639-f5bf-47ee-bfcb-2d0447e36d11",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "385fe259-971b-49b7-b685-27c0205009fd"
        },
        {
            "id": "006a3d3c-25a9-4a6d-94c4-e0e1badcd446",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "8d984489-f452-4b78-aa63-d91d2b42d0a2",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "385fe259-971b-49b7-b685-27c0205009fd"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "e062cb33-01ef-498d-aca8-8f882bfac2c0",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "bd3fe793-2816-4b49-94e6-b3e0644b239e",
            "value": "scr_PelicanStateIdle"
        },
        {
            "id": "4ab0df17-1d47-4547-aa3f-65d5868f008c",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "f880f527-c761-4432-993f-9f0800e1b2ba",
            "value": "scr_PelicanStateMoving"
        },
        {
            "id": "efe4b065-7f04-4232-bec4-7e2e71f9e5fd",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "440516e8-a7b3-4e61-996a-7eebecb8ff41",
            "value": "scr_PelicanStateJumping"
        },
        {
            "id": "ecb7d1ec-b062-4874-b465-3fc4a90cec61",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "d0382f87-f416-4c30-a2d4-4ade8290f50e",
            "value": "scr_PelicanStateAttacking"
        },
        {
            "id": "38f9a32f-f2c2-423d-85cc-bf6aab55d501",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "54427283-bc64-40b4-bcef-3427097bb49b",
            "value": "800"
        },
        {
            "id": "77bf2480-2806-4a05-94f9-157313d3a510",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "ed14a131-953f-411a-8370-232b4492166c",
            "propertyId": "fe5f28ae-a0bc-401f-9c51-9691484fdbde",
            "value": "10"
        }
    ],
    "parentObjectId": "c89e2c87-907a-434c-952e-bc59f6eb4851",
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
            "id": "13543fd9-e5ff-414a-9bf5-ff2d9d338fdc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "pth_Pelican",
            "varName": "pathToFollow",
            "varType": 5
        },
        {
            "id": "e517ca63-990a-49d1-a998-e905afed1005",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "objectLinkKey",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "a15b203e-d4c7-45aa-b47c-928527241c17",
    "visible": true
}