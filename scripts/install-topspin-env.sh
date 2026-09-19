# Allow local connections to X from the chroot
nix shell nixpkgs#xorg.xhost -c xhost +local:

# Enter the FHS env with display vars explicitly set
DISPLAY=:0 XAUTHORITY=$HOME/.Xauthority sudo -E topspin-env

# then use bash `Downloads/topspin-processing-5.0.0-linux.sh`
