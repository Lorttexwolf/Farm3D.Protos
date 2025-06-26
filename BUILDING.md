# Installation Instructions

**Ensure the following tools are installed on your system:**
- [Protoc](https://protobuf.dev/) version [3.15.0](https://github.com/protocolbuffers/protobuf/releases/tag/v3.15.0) or more-recent.
- [Node.js](https://nodejs.org/en) and [NPM](https://www.npmjs.com/)

Please verify the installed [Protoc](https://protobuf.dev/) version, you may need to update.
```bash
protoc --version
```

Arch Linux
```bash
sudo pacman -Sy protobuf nodejs npm
```

Debian / Ubuntu
```bash
sudo apt update
sudo apt install -y protobuf-compiler nodejs npm
```

**Install Node Dependencies**
Install project dependencies, including [protoc-gen-js](https://www.npmjs.com/package/protoc-gen-js) and [ts-proto](https://www.npmjs.com/package/ts-proto), using the following command:
```bash
npm install
```

## Validation
After making changes, run the appropriate validation script to ensure all `.proto` files are correctly compiled:

On **Windows**
```bash
./validate.ps1
```

On **Linux**
```bash
./validate.bash
```

Validation is also enforced automatically via [GitHub Actions](https://github.com/features/actions) during pull requests and merges.