{
  networking.firewall.allowedTCPPorts = [
    8989
  ];

  services.sonarr = {
    enable = true;
    # default port is 8989
    
    # user/group config
    # user="sonarr";
    # group="sonarr";
  };
}
