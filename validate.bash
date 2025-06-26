#!/bin/bash
# Requires: protoc, protoc-gen-js and ts-proto to be installed and available in PATH or node_modules

set -e

OUT_DIR="out"

if ! command -v protoc &> /dev/null; then
    echo "Error: protoc is not installed or not in PATH!"
    exit 1
fi

mkdir -p "$OUT_DIR"

# Validate by generating types on several used languages.
protoc \
    --proto_path=. \
    --plugin=./node_modules/.bin/protoc-gen-ts_proto \
    --ts_proto_out="$OUT_DIR" \
    --python_out="$OUT_DIR" \
    --csharp_out="$OUT_DIR" \
    --js_out="$OUT_DIR" \
    Machine.proto \
    Machines/BambuLab/BambuLab.proto \
    Machines/Elegoo/Elegoo.proto \
    Machines/Klipper/Klipper.proto 

rm -rf "$OUT_DIR"

echo "protos validated"