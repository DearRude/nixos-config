{ config, pkgs, ... }:

{
  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 99 ]; events = [ "key" ]; command = "/home/dearrude/.nix-profile/bin/flameshot gui"; }
    ];
  };
}
