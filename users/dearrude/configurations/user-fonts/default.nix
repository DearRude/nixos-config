{ pkgs, ... }:

{
  xdg.dataFile = {
    "fonts".source = ./custom-fonts;
    "fonts".recursive = true;
  };
}
