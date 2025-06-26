# Requires: protoc, protoc-gen-js and ts-proto to be installed and available in PATH or node_modules

$ErrorActionPreference = "Stop"

$OutDir = "out"

if (-not (Get-Command protoc -ErrorAction SilentlyContinue)) {
    Write-Error "Error: protoc is not installed or not in PATH!"
    exit 1
}

if (-not (Test-Path $OutDir)) {
    New-Item -ItemType Directory -Path $OutDir | Out-Null
}

# Validate by generating types on several used languages.
protoc `
    --proto_path=. `
    --plugin=protoc-gen-ts_proto=.\node_modules\.bin\protoc-gen-ts_proto.cmd `
    --ts_proto_out=$OutDir `
    --python_out=$OutDir `
    --csharp_out=$OutDir `
    --js_out=$OutDir `
    Machine.proto `
    Machines/BambuLab/BambuLab.proto `
    Machines/Elegoo/Elegoo.proto `
    Machines/Klipper/Klipper.proto

Remove-Item -Recurse -Force $OutDir

Write-Host "protos validated"