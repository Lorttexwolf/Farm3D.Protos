# Farm3D Protobuf Schemas

This repository contains a shared collection of [Protocol Buffers (Protobuf)](https://protobuf.dev) definitions used by the [Farm3D Project](https://github.com/Lorttexwolf/Farm3D).

Refer to the [BUILDING.md](./BUILDING.md) document for setup and development instructions.

[![Schema Validation](https://github.com/Lorttexwolf/Farm3D.Protos/actions/workflows/validate.yml/badge.svg)](https://github.com/Lorttexwolf/Farm3D.Protos/actions/workflows/validate.yml)

## Schema Overview and Directory Structure
The following `.proto` files define the data structures shared across [Farm3D](https://github.com/Lorttexwolf/Farm3D) components:
```
Machine.proto (A machine, it's status, print-details, features, and messages)
Machines/
  └── BambuLab/
        └── BambuLab.proto
  └── Elegoo/
        └── Elegoo.proto
  └── Klipper/
        └── Klipper.proto
```

### Naming and Organization Guidelines

Schemas that are specific to a particular hardware brand or system should be organized under corresponding subdirectories within Machines/. For example:

* `Machines/BambuLab/BambuLab.proto` contains message definitions tailored to [Bambu Lab](https://bambulab.com/en-us) printers for configuration.
* `Machines/Klipper/Klipper.proto` defines configurations and messages for a future [Klipper-based](https://www.klipper3d.org/) systems.