{ pkgs, ... }:

{
  home.packages = with pkgs; [
    unstable.mpv
  ];

  xdg.configFile = {
    "mpv/mpv.conf".source = ./mpv.conf;
    "mpv/input.conf".source = ./input.conf;
  };
}
