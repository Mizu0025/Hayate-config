{
  networking.firewall.allowedUDPPorts = [
    1337
  ];

  networking.wireguard.interfaces.homeVPN = {
      ips = [ "10.23.196.239" ];
     # to match firewall allowedUDPPorts (without this wg uses random port numbers)
      listenPort = 1337;

      # Path to the private key file
      # Note: The private key can also be included inline via the privateKey option,
      # but this makes the private key world-readable; thus, using privateKeyFile is
      # recommended
      privateKeyFile = "/home/liam/configuration-files/secrets/wireguard-privkey.conf";

      peers = [
      # For a client configuration, one peer entry for the server will suffice.

      {
        # Public key of the server (not a file path).
        publicKey = "F8+x+GHO25xNI8BnQvBuoWbWql6JFb5ENE8BRFaphQo=";
        # Forward all the traffic via VPN.
        allowedIPs = [ "0.0.0.0/0" ];
        # Or forward only particular subnets
        #allowedIPs = [ "192.168.50.8:8112" "192.168.50.8:9117" ];

        # Set this to the server IP and port.
        endpoint = "156.146.34.88:1337"; # ToDo: route to endpoint not automatically configured https://wiki.archlinux.org/index.php/WireGuard#Loop_routing https://discourse.nixos.org/t/solved-minimal-firewall-setup-for-wireguard-client/7577

        # Send keepalives every 25 seconds. Important to keep NAT tables alive.
        persistentKeepalive = 25;
        }
      ];
    };
}
