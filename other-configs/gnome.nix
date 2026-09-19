{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs.gnomeExtensions; [
     blur-my-shell
     just-perfection
     hot-edge
     caffeine
     clipboard-history
   ];
}
