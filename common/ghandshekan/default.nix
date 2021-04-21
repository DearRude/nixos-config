{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    unstable.v2ray
    unstable.openfortivpn
    unstable.dnscrypt-proxy2
  ];

  services = {
     v2ray.enable = true;
     v2ray.configFile = "/home/dearrude/nix-config/common/ghandshekan/secrets/v2ray-1.json";
     
     dnscrypt-proxy2.enable = true;
     dnscrypt-proxy2.configFile = ./secrets/dnscrypt-1.toml;
  };
  
  environment.etc = {
      "openfortivpn/config" = {
          enable = true;
          source = ./secrets/forti;
      };
  };
}
