{ config, pkgs, ... }:

{
  programs.ssh = {
    startAgent = true;
    agentTimeout = "8h";
  };
}
