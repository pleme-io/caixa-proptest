# nix/modules/nixos.nix — auto-generated from proptest.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.proptest;
in {
  options.services.proptest = {
    enable = lib.mkEnableOption "proptest";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.proptest or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
