{
    "id": "9fc738ba-255f-46e4-90b8-6308a93e4c4e",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_player",
    "eventList": [
        {
            "id": "bb58960d-0135-4ca0-b4d4-2aa4c0293862",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "9fc738ba-255f-46e4-90b8-6308a93e4c4e"
        },
        {
            "id": "e64ccecb-454b-4705-a6ec-df6e6f6ef309",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "9fc738ba-255f-46e4-90b8-6308a93e4c4e"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "796afbf8-ccd3-407e-bc3f-965ab15363ef",
    "persistent": false,
    "physicsAngularDamping": 0.5,
    "physicsDensity": 4,
    "physicsFriction": 0.3,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.5,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 2,
    "physicsShapePoints": [
        {
            "id": "f2db8e48-7844-47e6-8f89-9e615e4919f8",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 0,
            "y": 12
        },
        {
            "id": "402ec7c3-bff4-4759-a77c-95676c86f0d6",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 4,
            "y": 5
        },
        {
            "id": "17ad8164-fd83-40d8-991b-69dbd7cd54d8",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 12,
            "y": 0
        },
        {
            "id": "a4a670d2-c0ab-4c8a-a106-f8e91449194f",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 20,
            "y": 0
        },
        {
            "id": "58dd4d2a-ecca-4100-bbeb-0ca42896d282",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 28,
            "y": 5
        },
        {
            "id": "3291e83a-f875-46e3-81a5-ae88502e066b",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 32,
            "y": 12
        },
        {
            "id": "1b162c2a-8fb6-419b-923b-640097c3a6ad",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 32,
            "y": 64
        },
        {
            "id": "7ce6f9c6-5e58-47af-baf2-ea558ca66412",
            "modelName": "GMPoint",
            "mvc": "1.0",
            "x": 1,
            "y": 64
        }
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "92ddc8e7-51af-44c5-9bfd-39c8b5bf7c1c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "50",
            "varName": "go_land_acceleration",
            "varType": 0
        },
        {
            "id": "c9b468e2-fee8-46e2-b04c-627ba8488fcb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "go_air_acceleration",
            "varType": 0
        },
        {
            "id": "19a5149d-fffb-4207-af68-0d6fe1d93b41",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "14",
            "varName": "jump_speed",
            "varType": 0
        },
        {
            "id": "2016b588-4698-4f0e-b2d0-6c7e60e8865c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "strike_speed",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}