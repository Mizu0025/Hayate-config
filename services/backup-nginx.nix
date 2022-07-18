{
  security.acme.acceptTerms = true;
  security.acme.defaults.email = "liamash3@gmail.com";

  services.nginx = {
        enable = true;
	recommendedTlsSettings = true;
	recommendedProxySettings = true;

	

        virtualHosts."localhost" = {
#	  listen = [
#		{ addr = "192.168.50.8"; port = 443; }
#		{ addr = "192.168.50.8"; port = 80; } 
#		];
	  locations."/" = { root = "/var/www/websites/"; };

	  locations."/images" = { root = "/var/www/websites/images"; };
        };
  };
}
