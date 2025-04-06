# realbone

## Table of Contents
- [Password Manager](#password-manager)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Project Structure](#project-structure)
  - [Contributing](#contributing)
  - [License](#license)
  - [Acknowledgements](#acknowledgements)

## Description

Basic Beaglebone Board skeleton project using BR2_EXTERNAL buildroot structure.

## Create output folder with .config

```bash
# from root folder
rm -rf output
mkdir output
touch output/.br-external.mk
cd buildroot
make beaglebone_defconfig                 # load beaglebone_defconfig to buildroot/.config
make BR2_EXTERNAL=../external/ menuconfig #apply your custom changes to buildroot/.config
make savedefconfig BR2_DEFCONFIG=../external/configs/realbone_defconfig  #save minimal file to external/configs/realbone_defconfig
cd ..
make BR2_EXTERNAL=$PWD/external -C $PWD/buildroot O=$PWD/output realbone_defconfig # write output/.config
```

## Project Structure

```bash
realbone/
├── buildroot/                   # Git submodule or clone of Buildroot
├── external/                    # Your BR2_EXTERNAL overlay
│   ├── Config.in
│   ├── external.mk
│   ├── configs/
│   │   └── bbb_defconfig        # Your project’s defconfig
│   ├── board/
│   │   └── beaglebone/          # Board-specific files
│   │       ├── post-build.sh
│   │       ├── post-image.sh
│   │       └── uEnv.txt         # If needed for U-Boot
│   └── package/                 # Your custom packages (optional for now)
├── output-bbb/                  # Output/build directory (created by buildroot)
└── README.md                    # Optional: document your setup
```

## Contributing

Guidelines on how to contribute to the project.
- Fork the repository.
- Create a new branch (git checkout -b feature-branch).
- Commit your changes (git commit -m 'Add new feature').
- Push to the branch (git push origin feature-branch).
- Open a pull request.

## License

```bash
Distributed under the MIT License. See `LICENSE` for more information.
```
