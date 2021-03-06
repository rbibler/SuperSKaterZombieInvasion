{
    "id": "312d0ef5-a0f5-42a1-bccb-435dc6e027ae",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_slimeballProjectile",
    "eventList": [
        {
            "id": "b73eab75-4252-4336-b980-583e8c754eec",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "312d0ef5-a0f5-42a1-bccb-435dc6e027ae"
        },
        {
            "id": "c19d2979-4988-42f2-9c75-4ad3f4d0fdf6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "312d0ef5-a0f5-42a1-bccb-435dc6e027ae"
        },
        {
            "id": "0542a397-bf97-48c0-b8c2-fea710463115",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "312d0ef5-a0f5-42a1-bccb-435dc6e027ae"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "2a14d175-a546-4fb0-a8ad-ea68254bcf9e",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "ed14a131-953f-411a-8370-232b4492166c",
            "propertyId": "26abc641-5803-47dd-828b-be5572c23118",
            "value": "0.15"
        },
        {
            "id": "36de8de0-39cb-42c4-9deb-e43e3734f36d",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "07ec105c-dcf1-4207-8a4b-daf59ab88154",
            "propertyId": "5e20161a-a3e4-4f2c-b390-719bd19eaac0",
            "value": "scr_ExplodingSlimeballProjectileStruckSkater"
        }
    ],
    "parentObjectId": "07ec105c-dcf1-4207-8a4b-daf59ab88154",
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
            "id": "2426bdd2-4568-4313-bc8e-a9f793f83407",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "15",
            "varName": "hitPoints",
            "varType": 0
        },
        {
            "id": "99b18f30-ebd7-4c29-9483-3dd178f0785f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.5",
            "varName": "yAccel",
            "varType": 0
        },
        {
            "id": "c8b514c8-80ee-4583-bb4c-895878876de6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "infectious",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "37e89fe2-eabe-4dc6-ab05-4662df31cae3",
    "visible": true
}