{ config, pkgs, ... }:

{
  # 1. Enable the configuration generation
  services.strongswan.enable = true;
  
  # 2. Prevent the system-wide background daemon from running and locking ports
  systemd.services.strongswan.enable = false;
  services.xl2tpd.enable = false;

  # 3. Create the missing configuration file that charon is looking for
  environment.etc."strongswan.conf" = {
    text = "";
  };

  # 4. Loosen reverse path filtering (often required for L2TP routing)
  networking.firewall.checkReversePath = "loose";
}
