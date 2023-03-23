{
  networking.hostName = "hayate"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # networking.useDHCP = true; # this is deprecated

  # ipv6 global
  networking.enableIPv6 = true;

  networking.interfaces = {
    enp3s0 = {
      useDHCP = true;
    };
  };

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
}
