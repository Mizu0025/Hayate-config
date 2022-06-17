{
  networking.firewall.allowedTCPPorts = [
    9117
  ];

  services.jackett = {
    enable = true;
    
    # user/group info
    # user="jackett";
    # group="jackett";
  };
}
