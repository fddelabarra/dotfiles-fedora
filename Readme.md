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
- Fish:
```bash
sudo dnf in fish
```
Cambiar de bash, buscar direccion con which fish en caso de que no pregunte
```bash
chsh
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
- exa: 
```bash
cargo install exa
```
- otros


