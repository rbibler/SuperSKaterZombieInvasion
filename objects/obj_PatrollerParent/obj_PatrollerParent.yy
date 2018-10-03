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
            "id": "721cd286-0d9e-4d6f-85aa-8cdae0cebc5b",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "ed14a131-953f-411a-8370-232b4492166c",
            "propertyId": "7d8e0fec-70e6-41e1-81ad-64d33d679a8d",
            "value": "scr_PatrolHorizCollision"
        },
        {
            "id": "e8c23b3f-d4f1-44cb-bc56-8ae633a4e180",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "f880f527-c761-4432-993f-9f0800e1b2ba",
            "value": "scr_EnemyMove"
        },
        {
            "id": "3f692a2f-2ec3-4019-ad00-81b600dd69c8",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "440516e8-a7b3-4e61-996a-7eebecb8ff41",
            "value": "scr_EnemyJump"
        },
        {
            "id": "1200f8fd-7d9a-4ca7-9ab9-4a2d1a08fd33",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "baf13921-fcd0-4557-98e6-03296607539b",
            "value": "scr_EnemyFall"
        },
        {
            "id": "aa1033bb-8241-4e30-afcd-621efc49234a",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "0533c279-6e45-41ed-a49a-197ac06ede2a",
            "value": "scr_EnemyDead"
        },
        {
            "id": "66af4338-78d7-4581-bfb3-35c8c18381e0",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "29b75946-cc68-425e-98df-81aab9e40d89",
            "value": "scr_PatrolMove"
        },
        {
            "id": "b2b3babb-00d6-4b6e-bf88-471a61ebed6a",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "3d7b2056-82b8-4245-adf2-020b7fa8bb32",
            "propertyId": "8060bcb0-5315-472b-b928-b1c4a2be74af",
            "value": "scr_EnemyHit"
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