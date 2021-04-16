{ config, pkgs, ... }:

{
  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import (builtins.fetchTarball
        "https://github.com/NixOS/nixpkgs-channels/archive/nixos-unstable.tar.gz") {
          config = config.nixpkgs.config;
        };
    };
  };
}
