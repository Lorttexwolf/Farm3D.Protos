# Steps to Install

### Install [protoc](https://protobuf.dev/installation/) [npm](https://www.npmjs.com/) and [nodejs](https://nodejs.org/en)

Arch Linux

```bash
sudo pacman -Sy --noconfirm protobuf nodejs npm
```

Debian 

```bash
sudo apt update
sudo apt install -y protobuf-compiler nodejs npm
```

Ubuntu

```bash
sudo apt update
sudo apt install -y protobuf-compiler nodejs npm
```

> [!NOTE]
> Protoc version [v3.15.0](https://github.com/protocolbuffers/protobuf/releases/tag/v3.15.0) and later is recommended.
> Run `protoc --version` to check the version of protoc after using a package manager. 

### Install node packages [protoc-gen-js](https://www.npmjs.com/package/protoc-gen-js) and [ts-proto](https://www.npmjs.com/package/ts-proto/) inside project.

```bash
npm install
```

Once installed, changes made should be validated using `validate.ps1` (Windows) or `validate.bash` (Linux) scripts, this operation will also be performed automatically by [GitHub Actions](https://github.com/features/actions) on pull-request or merge.