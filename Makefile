.EXPORT_ALL_VARIABLES:
HOST=work
NIXOS_CONFIG=/home/dearrude/nix-config/hosts/$(HOST)/configuration.nix

test:
	@nixos-rebuild test
switch:
	@nixos-rebuild switch
boot:
	@nixos-rebuild boot
