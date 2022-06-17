{
  networking.firewall.allowedTCPPorts = [
    7878
  ];

  services.radarr = {
    enable = true;
    # default port is 7878

    # user/group config
    # user="radarr";
    # group="radarr";
  };
}
