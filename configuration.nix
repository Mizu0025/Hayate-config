# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      # Configuration files
      ./modules/configuration.nix 
      ./modules/firewall.nix
      ./modules/networking.nix
      ./modules/programs.nix
      ./modules/users.nix

      # service configuration
      #./services/thelounge.nix
      ./services/jellyfin.nix
      ./services/sonarr.nix
      ./services/radarr.nix
      ./services/lidarr.nix
      ./services/deluge.nix
      ./services/jackett.nix
      ./services/openvpn.nix
      ./services/nginx.nix
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}
