
{ config, pkgs, ... }:

{
   fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [ 
      ubuntu_font_family
      vazir-fonts
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      liberation_ttf
      fira-code
    ];

    fontconfig = {
      defaultFonts = {
        serif = [ "Vazir" "Ubuntu" ];
        sansSerif = [ "Vazir" "Ubuntu" ];
        monospace = [ "Fira Code" ];
      };
    };
  };
}
