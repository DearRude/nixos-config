{ pkgs, ...}:

{
  programs.fish = {
    enable = true;
    package = pkgs.unstable.fish;
    shellAbbrs = {
      # Change vebosity and prettfy things
      "cp" = "cp -iv";
      "mv" = "mv -iv";
      "rm" = "rm -v";
      "ls" = "ls -hN --color=auto --group-directories-first";
      "grep" = "grep --color=auto";

      # Shorten
      "f" = "ranger";
      "ap" = "ansiable-playbook";

      # Subtitute
      "Discord" = "Discord --proxy-server=socks5://127.0.0.1:1080";


    };
  };

}
