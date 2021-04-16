{ pkgs, ... }:

{
  environment.pathsToLink = [ "/libexec" ];
  services.xserver.windowManager.i3 = {
    enable = true;
    package = pkgs.unstable.i3-gaps;
    extraPackages = with pkgs; [
      xclip
      dmenu
      rofi
      arandr
      picom
      polybarFull
    ];
  };

  home-manager.users.dearrude = {
    services = {
        unclutter = {
          enable = true;
          timeout = 5;
        };
    };

    xdg.configFile = {
      "i3/config".source = ./config;
      "polybar/blocks".source = ./polybar_blocks;
    };
  };
}
