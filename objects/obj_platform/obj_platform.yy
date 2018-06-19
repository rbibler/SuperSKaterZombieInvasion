{
    "id": "30ce1638-3297-4f3c-835f-9ab49d93df3f",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_platform",
    "eventList": [
        {
            "id": "fc819d98-b968-4c61-ad5d-a35bc912b5cb",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "30ce1638-3297-4f3c-835f-9ab49d93df3f"
        },
        {
            "id": "f84e0232-e37a-4d21-a015-82f25870ce33",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "862d6466-23bc-4dcf-8d2e-2d7b0e4f3e08",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "30ce1638-3297-4f3c-835f-9ab49d93df3f"
        },
        {
            "id": "8bb90bdd-ae2f-45e1-9faf-7f898b45f97a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "30ce1638-3297-4f3c-835f-9ab49d93df3f"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "f41956da-8f75-4464-a794-d88f29b83e80",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "de9ae66e-f636-4141-bf2f-815a0308cf01",
            "propertyId": "746a4138-d01b-41a4-83ac-431b895df83e",
            "value": "MovingPlatformVertCollisionScript"
        }
    ],
    "parentObjectId": "de9ae66e-f636-4141-bf2f-815a0308cf01",
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
            "id": "d927ba0b-93bb-448b-9ef2-caa65f54ea7f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "movementDirection",
            "varType": 0
        },
        {
            "id": "6fab0719-76e3-408e-94f6-4e9a6e56ef06",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "initialDirection",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "e298b583-933c-46fc-bd9a-34fc6dec5c14",
    "visible": true
}