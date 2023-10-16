```console
nix-instantiate ./repro.nix --add-root drv --indirect
nix build ./drv
nix derivation show ./drv
```
