{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Laptop hardware
      <nixos-hardware/common/pc/laptop>
      <nixos-hardware/lenovo/ideapad>
      # DearRude user
      ../../users
      ../../users/dearrude
      ../../users/dearrude/configurations/i3
      ../../users/dearrude/configurations/x.nix
      ../../users/dearrude/configurations/actkbd.nix
      # Commons
      ../../common/bluetooth.nix
      ../../common/font.nix
      ../../common/gpg.nix
      ../../common/light.nix
      ../../common/master.nix
      ../../common/nur.nix
      ../../common/sound.nix
      ../../common/unstable.nix
      ../../common/ghandshekan
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.extraModprobeConfig = "options rfkill default_state=0";

  networking.hostName = "workidea";
  networking.networkmanager = {
    enable = true;
    dns = "none";
  };

  time.timeZone = "Asia/Tehran";

  networking.useDHCP = false;
  networking.interfaces.enp2s0.useDHCP = true;
  networking.interfaces.wlp3s0.useDHCP = true;

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
      "fa_IR/UTF-8"
    ];
  };

  console = {
    font = "Lat2-Terminus16";
    keyMap = "uk";
  };

}

