{
    "id": "a895efa3-8807-4a53-b3ca-4fc28915d361",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_weapon",
    "eventList": [
        {
            "id": "a197b33e-cdd8-4528-91e3-e00ab8ea8bd0",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "a895efa3-8807-4a53-b3ca-4fc28915d361"
        },
        {
            "id": "263db765-a1e8-4a19-b012-517b7d1c4e6e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "a895efa3-8807-4a53-b3ca-4fc28915d361"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
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
            "id": "b9a69cc8-a029-45a7-8e72-5fad938dc014",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "maxAmmo",
            "varType": 0
        },
        {
            "id": "661c021f-b805-459a-876d-d07d530d5811",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "cooldownTime",
            "varType": 0
        },
        {
            "id": "2d1d7bff-f349-4e0c-9466-654097bf7c02",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hitPower",
            "varType": 0
        },
        {
            "id": "3cbe53f1-7d66-4925-bd2e-bdc1b9615816",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "fireScript",
            "varType": 5
        },
        {
            "id": "cd5d5273-f3b1-40a3-9b4a-f8854082de26",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "maxAmmoOnScreen",
            "varType": 0
        },
        {
            "id": "ff541e13-f490-4266-93c5-a259903c2476",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "ammoType",
            "varType": 5
        },
        {
            "id": "8ec26f91-cc60-4d28-8d1b-345f66ea480d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "weaponAnimCount",
            "varType": 0
        },
        {
            "id": "bea69fc8-e9a8-4610-9190-dd0e52552ccc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "isAutomatic",
            "varType": 3
        },
        {
            "id": "368e6ca9-bab5-4dc3-9a62-c277a481ce04",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "projOffsetStandingX",
            "varType": 0
        },
        {
            "id": "198711b7-470a-460b-9d79-c4600a025d23",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "projOffsetStandingY",
            "varType": 0
        },
        {
            "id": "160424be-f661-4255-ab17-a49681bd0024",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "projOffsetCrouchingX",
            "varType": 0
        },
        {
            "id": "56cc11b7-fb5b-45c7-98c9-7456d5af9667",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "projOffsetCrouchingY",
            "varType": 0
        },
        {
            "id": "e4f2a7e5-e8ee-4457-ba41-416b2ad8cebe",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "projOffsetJumpingX",
            "varType": 0
        },
        {
            "id": "3302d11f-3b03-4a06-841e-4e703ac0d0ac",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "projOffsetJumpingY",
            "varType": 0
        },
        {
            "id": "08e4c603-2948-4bc3-9677-33a965b5a04e",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "freezeSkater",
            "varType": 3
        },
        {
            "id": "3b570c7d-3c11-4daa-bd7c-2ce1db627e43",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "noone",
            "varName": "shootSequenceScript",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}