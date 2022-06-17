{
  networking.firewall.allowedUDPPorts = [
    1198
  ];
  networking.firewall.allowedTCPPorts = [
    1198
  ];

  services.openvpn.servers.homeVPN = {
    # config = "/home/liam/configuration-files/secrets/vpn/pia.conf";
    config = ''
    # this is a client config
    client

    # enable TLS
    tls-client    

    dev tun

    # where vpn connects
    remote japan.privateinternetaccess.com 1198 udp

    resolv-retry infinite
    persist-key
    persist-tun

    # security
    cipher aes-128-cbc
    data-ciphers aes-128-cbc
    auth sha1

    # certificates
    crl-verify /home/liam/configuration-files/secrets/vpn/crl.rsa.2048.pem
    ca /home/liam/configuration-files/secrets/vpn/ca.rsa.2048.crt
    remote-cert-tls server

    # authentication
    auth-user-pass /home/liam/configuration-files/secrets/vpn/credentials.conf
    auth-nocache

    verb 1
    reneg-sec 0
    disable-occ
    '';
  };
}
