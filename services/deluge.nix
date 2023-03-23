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

    # deluge config
    declarative = false;
    /*
    openFirewall = true;
    config = {
	download_location = "/media/Downloads";
	allow_remote = true;
	daemon_port = 58846;
	listen_ports = [ 6881 6889 ];
    };
    authFile = "/var/secrets/deluge_auth";
    */
  };
}
