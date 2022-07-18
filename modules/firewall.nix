{
  # enabled by default
  networking.firewall.enable = true;

  networking.firewall.allowedTCPPorts = [
    80
    443
  ];

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}
