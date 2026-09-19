{ pkgs, lib, stdenv, ... }:

pkgs.buildFHSEnv {
  name = "topspin-env";

  targetPkgs = pkgs: with pkgs; [
    jdk17
    glib
    gtk3
    libGL
    libGLU
    xorg.libX11
    xorg.libXext
    xorg.libXrender
    xorg.libXtst
    xorg.libXi
    xorg.libXt
    xhost
    xorg.libxcb
    xorg.xcbutil
    freetype
    fontconfig
    zlib
    stdenv.cc.cc.lib
    tcl
    tk
    which
    perl
    coreutils      # provides df, expr, basename, dirname, etc.
    util-linux     # provides mount
    bash
    libxcrypt-legacy
  ];

  runScript = "bash";
}
