{ config, pkgs, ... }:

{
  imports = [<home-manager/nixos>];

  # user dearrude
  users.groups.dearrude.gid = 1000;
  users.users.dearrude = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "docker"
      "networkmanager"
      "audio"
      "video"
    ];
    group = "dearrude";
    shell = pkgs.fish;
  };

  home-manager.users = {
    dearrude = (import ./dearrude/core.nix);
  };
}
