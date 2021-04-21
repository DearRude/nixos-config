{ config, pkgs, ... }:

let # Run packages without installing by comma prefixing
  comma = import (builtins.fetchTarball "https://github.com/Shopify/comma/archive/60a4cf8ec5c93104d3cfb9fc5a5bac8fb18cc8e4.tar.gz") { inherit pkgs; };
in {
  imports = [
    ../../common/unstable.nix
    ../../common/nur.nix
    ../../common/master.nix
    ./configurations/mpv
    ./configurations/alacritty
    ./configurations/user-fonts
    ./configurations/git.nix
    ./configurations/fish.nix
    ./configurations/vscode.nix
  ];

  xsession.initExtra = ''
    systemctl --user import-environment
  '';

  programs.home-manager.enable = true;

  home.sessionPath = [
    "$HOME/.poetry/bin"
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
    "$(pyenv root)/shims"
  ];

  home.packages = with pkgs; [
    unstable.jq
    # Utilities
    unstable.keepassxc
    gcc
    unstable.josm
    libnotify
    unstable.zenith
    lm_sensors
    gnumake
    comma
    vim
    firefox
    # Social
    unstable.tdesktop
    skype
    unstable.discord

  ];

  nixpkgs.config = {
    allowBroken = true;
    allowUnfree = true;
  };
  services.flameshot.enable = true;
}
