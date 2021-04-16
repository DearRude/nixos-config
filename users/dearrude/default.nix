{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
    ./configurations/variables.nix
    ./configurations/ssh.nix
  ];

}