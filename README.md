# Farm3D Protobuf Schemas

A shared-collection of [Protobuf](https://protobuf.dev/) objects for the [Farm3D Project](https://github.com/Lorttexwolf/Farm3D). 

Refer to [BUILDING.md](./BUILDING.md) for steps to compile this project. 

[![Build Status](https://github.com/Lorttexwolf/Farm3D.Protos/actions/workflows/validate.yml/badge.svg)](https://github.com/Lorttexwolf/Farm3D.Protos/actions/workflows/validate.yml)

## Schemas and File-Layout

- `Machine.proto`
- `Machines/BambuLab/BambuLab.proto`
- `Machines/Elegoo/Elegoo.proto`
- `Machines/Klipper/Klipper.proto`

Objects related or intended to be used with a certain brand or system should be placed under a sub-directly, such as `Machines/BambuLab` containing the schema for the information required to manage/connect to a [BambuLab](https://bambulab.com/en-us) Machine.
