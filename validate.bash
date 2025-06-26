#!/bin/bash
# Requires: protoc, protoc-gen-js and ts-proto to be installed and available in PATH or node_modules

set -e

OUT_DIR="out"

if ! command -v protoc &> /dev/null; then
    echo "Error: protoc is not installed or not in PATH!" >&2
    exit 1
fi

mkdir -p "$OUT_DIR"

# ts-proto requires an absolute path when specifying the location of the protoc-gen-ts_proto executable 
PROTOC_GEN_TS_PROTO_EXEC="$PWD/node_modules/ts-proto/protoc-gen-ts_proto"
PROTOC_GEN_JS_EXEC="$PWD/node_modules/protoc-gen-js/bin/protoc-gen-js"

# Validate by generating types on several used languages.
protoc \
    --proto_path=. \
    --plugin=protoc-gen-js="$PROTOC_GEN_JS_EXEC" \
    --plugin=protoc-gen-ts_proto="$PROTOC_GEN_TS_PROTO_EXEC" \
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