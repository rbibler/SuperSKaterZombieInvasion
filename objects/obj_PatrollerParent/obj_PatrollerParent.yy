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
            "id": "66af4338-78d7-4581-bfb3-35c8c18381e0",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "29b75946-cc68-425e-98df-81aab9e40d89",
            "value": "scr_PatrolMove"
        },
        {
            "id": "e6c4e7e8-0b8a-40b9-b6d8-2a8b2ed7f31f",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "62a3600e-7aa5-4a62-90b7-1de5e2c9c7a0",
            "propertyId": "6f99264f-8f71-492f-bf4d-fe100af69405",
            "value": "scr_PatrolHorizCollision"
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