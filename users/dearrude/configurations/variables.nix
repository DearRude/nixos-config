{ config, pkgs, ... }:

{
  environment.variables = {
    EDITOR = "vim";
    TERMINAL= "alacritty";
    BROWSER = "firefox";
    FILE = "ranger";

    # Java Fonts
    _JAVA_OPTIONS = "-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel";
    _JAVA_AWT_WM_NONREPARENTING = "1";
  };
}

