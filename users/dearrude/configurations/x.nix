{ config, pkgs, ... }:

{
  # X-server
  services.xserver = {
     exportConfiguration = true; # link /usr/share/X11/ properly
     enable = true;
     # Layout
     layout = "gb,ir";
     xkbOptions = "grp:alt_shift_toggle";
     # Touchpad
     libinput = {
        enable = true;
        dev = "/dev/input/event5";
        tapping = true;
        disableWhileTyping = true;
        accelSpeed = "0.5";
     };
  };
}
