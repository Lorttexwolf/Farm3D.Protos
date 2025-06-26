# To execute this script you will need protoc and protoc-gen-js installed!

set -e

OUT_DIR="out"

if ! command -v protoc &> /dev/null; then
    echo "Error: protoc is not installed or not in PATH!"
    exit 1
fi

mkdir -p "$OUT_DIR"

# Validate by generating types on all available languages (Unsure if there is a better method)
protoc \
    --proto_path=. \
    --python_out="$OUT_DIR" \
    --csharp_out="$OUT_DIR" \
    --js_out="$OUT_DIR" \
    Machine.proto \
    Machines/BambuLab/BambuLab.proto \
    Machines/Elegoo/Elegoo.proto \
    Machines/Klipper/Klipper.proto 

rm -rf "$OUT_DIR"

echo "protos validated"