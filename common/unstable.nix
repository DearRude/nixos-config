{ config, pkgs, ... }:

{
  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import (builtins.fetchTarball
          "https://github.com/nixos/nixpkgs/archive/nixos-unstable.tar.gz") {
          config = config.nixpkgs.config;
        };
    };
  };
}
