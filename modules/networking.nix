{
  networking.hostName = "nanoha"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # networking.useDHCP = true; # this is deprecated

  networking.interfaces = {
    enp3s0 = {
      useDHCP = true;
      ipv4.addresses = [ {
        address: 192.168.50.8;
        prefixLength: 24;
      } ];
    };
  };

  networking.defaultGateway = "192.168.50.1";
  networking.nameServers = [ "8.8.8.8" ];  

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
}
