# nix/modules/home-manager.nix — auto-generated from proptest.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.proptest; in {
  options.programs.proptest = {
    enable = lib.mkEnableOption "proptest";
    package = lib.mkOption { type = lib.types.package; default = pkgs.proptest or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
