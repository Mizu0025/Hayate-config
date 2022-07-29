{
   networking.firewall.allowedTCPPorts = [
    6881 # incoming traffic
    8112 # web ui
  ];

  services.deluge = {
    enable = true;
    web.enable = true;
    
    web.port = 8112;

    # user/group config
    user="deluge";
    group="removable-storage";
  };
}
