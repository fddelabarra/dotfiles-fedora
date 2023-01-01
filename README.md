# Dotfiles Fedora

## Al descargar Fedora:

### Configurar variables de entorno

En un ```.env``` poner estas variables

```bash
RUSTFLAGS=-C opt-level=3 -C codegen-units=1 -C target-cpu=native -C linker=clang -C embed-bitcode=yes
CC=gcc -O3 -march=native
CXX=g++ -O3 -march=native
CFLAGS=-O3 -march=native
CXXFLAGS=-O3 -march=native
NUM_JOBS=1
CARGO_PROFILE_RELEASE_CODEGEN_UNITS 1
CARGO_PROFILE_RELEASE_DEBUG false
CARGO_PROFILE_RELEASE_DEBUG_ASSERTIONS false
CARGO_PROFILE_RELEASE_INCREMENTAL=false
CARGO_PROFILE_RELEASE_LTO=true
CARGO_PROFILE_RELEASE_OVERFLOW_CHECK false
CARGO_PROFILE_RELEASE_OPT_LEVEL=3
CARGO_PROFILE_RELEASE_PANIC=abort
```

### Cosas que configurar/descargar

- Alacritty
```bash
mkdir github
cd github
git clone https://github.com/ctronp/alacritty.git  # By Carlos (Ctronp) (tiene install.sh ya hecho para mas comodidad al actualizar)
```

- Fish:
```bash
sudo dnf in fish
```
Cambiar de bash, buscar direccion con which fish en caso de que no pregunte
```bash
which fish
chsh -s /usr/bin/fish
```
Si no esta chsh, instalar
```bash
sudo dnf in util-linux-user
```
[Themes](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)
- Rustup, se busca en google
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
- exa, entre otros: 
```bash
cargo install exa bat cargo-update starship
```
- Para evitar todo eso solo se debe usar el script 
```bash
./configuration.sh
```
El cual instalará Fish (starship), Cargo y Alacritty automaticamente.

- rpm fusion

    [RPM Fusion Nvidia](https://rpmfusion.org/Howto/NVIDIA)

    [RPM Fusion](https://rpmfusion.org/Configuration)

- Flathub
```bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

- Borrar mensaje Welcome de Fish
```bash
set -Ux fish_greeting
```
