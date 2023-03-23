{
  networking.firewall.allowedTCPPorts = [
    8686
  ];

  services.lidarr = {
    enable = true;
    # default port is 8686
    
    # user/group config
    # user="sonarr";
    # group="sonarr";
  };
}
