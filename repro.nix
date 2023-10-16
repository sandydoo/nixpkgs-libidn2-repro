let
  pkgs = (builtins.getFlake "github:nixos/nixpkgs/bb8b5735d6f7e06b9ddd27de115b0600c1ffbdb4").legacyPackages.${builtins.currentSystem};
in
  pkgs.runCommand "repro" {
    buildInputs = with pkgs; [
      curl
      gnutar
      gnupg
      libidn2
    ];
  }
  "touch $out"
