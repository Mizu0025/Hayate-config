{
  networking.firewall.allowedUDPPorts = [
    1198
  ];

  services.openvpn.servers = {
    pia = {
      autoStart = true;
            
      config = ''
	config ${./pia/config.ovpn}
	auth-user-pass ${./pia/pia-login.txt}
	crl-verify ${./pia/crl.pem}
	ca ${./pia/ca.pem}
      '';
    };
  };
}
