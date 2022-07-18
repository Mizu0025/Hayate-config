{
  networking.firewall.allowedUDPPorts = [
    1198
  ];

  services.openvpn.servers = {
    pia = {
      # bad for security, as details visible in nix store
      autoStart = true;
      
      authUserPass = {
        username = "p1156821";
        password = "8nB5HrWLJM";
      };
      
      config = ''
        client
	dev tun
	proto udp
	remote japan.privacy.network 1198
	resolv-retry infinite
	nobind
	persist-key
	persist-tun
	data-ciphers aes-128-cbc
	data-ciphers-fallback aes-128-cbc
	auth sha1
	tls-client
	remote-cert-tls server

	auth-user-pass
	auth-nocache
	compress
	verb 1
        reneg-sec 0

	# moved certs to external files for easier maintainance
	crl-verify ${./pia/crl.pem}
	ca ${./pia/ca.pem}

	disable-occ
      '';
    };
  };
}
