{
  networking.firewall.allowedTCPPorts = [
    8096
  ];

  services.jellyfin = {
    enable = true;

    # default user/group to run service with
    # user="jellyfin";
    # group="jellyfin";
  };
}
