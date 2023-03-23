{ pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  environment.systemPackages = with pkgs; [
    # general
    wget
    git
    unzip
    pciutils
        
    # motd
    figlet

    # vpn
    openvpn

    # web server
    nginx

    # irc client
    nodejs-18_x
    thelounge

    # media server
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
    jftui

    # torrent client
    deluge
    jackett

    # media management
    sonarr
    radarr
    lidarr
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
