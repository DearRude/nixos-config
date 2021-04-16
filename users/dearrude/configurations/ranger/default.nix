{ pkgs, ... }:

{
  home.packages = with pkgs; [
    unstable.ranger
  ];

  xdg.configFile = {
    "ranger".source = ./configs;
    "ranger".recursive = true;;
  };
}
