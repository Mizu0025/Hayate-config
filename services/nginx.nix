{
  security.acme.acceptTerms = true;
  security.acme.defaults.email = "liamash3@gmail.com";

  services.nginx = {
        enable = true;

        virtualHosts."localhost" = {
	  # ssl configuration
	  # forceSSL = true;
	  # enableACME = true;
	  # all alias are added as extra domain on the certificate
	  # alias = [  ];

	  root = "/var/www/magical-hayate.net";
	  extraConfig = ''
		error_page 404 /error-404.html;
		error_page 502 /error-502.html;
		proxy_headers_hash_bucket_size 128;
	  '';

	  locations."/" = { 
		index = "index.html";
	  };

	  locations."/irc/" = {
		proxyPass = "http://127.0.0.1:9000/";
		extraConfig = ''
			proxy_http_version 1.1;
			proxy_set_header Connection "upgrade";
			proxy_set_header Upgrade $http_upgrade;
			proxy_set_header X-Forwarded-For $remote_addr;
			proxy_set_header X-Forwarded-Proto $scheme;

			# by default nginx times out connections in one minute
			proxy_read_timeout 1d;
		'';
	  };
	};
  };
}
