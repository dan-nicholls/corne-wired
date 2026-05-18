# KBD firmware

`dankbd` is my personal layout for the Corne (`foostan/crkbd`). It adds home row
mods and a hold-to-toggle game layer.

Home row mods on base layer (hold = modifier, tap = normal key):

- `A` = Ctrl
- `S` = Alt
- `D` = GUI
- `F` = Shift
- `J` = Shift
- `K` = GUI
- `L` = Alt
- `;` = Ctrl

Game layer is a toggleable overlay that disables home row mods. Toggle it by
holding both the `lower` and `upper` layer modifiers and the top-right key
(Backspace position).

## Build

```sh
# one-time: get submodules
make git-submodule

# enter dev shell (qmk + dos2unix)
nix-shell

# build dankbd (rev1, default keymap)
make qmk-init
make qmk-compile

# flash
make qmk-flash
```

Build artifacts are written to:

- `keyboards/dankbd/qmk/qmk_firmware/.build`

## Other targets

```sh
# build a specific target
kb=<keyboard> kr=<revision> km=<keymap> make qmk-compile

# examples
kb=dankbd kr=rev1 km=default make qmk-compile
kb=crkbd kr=rev4_1/standard km=via make qmk-compile
```
