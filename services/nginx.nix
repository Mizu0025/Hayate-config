{
  security.acme.acceptTerms = true;
  security.acme.defaults.email = "liamash3@gmail.com";

  services.nginx = {
        enable = true;
	recommendedTlsSettings = true;
	recommendedProxySettings = true;

        virtualHosts."localhost" = {
	  root = "/var/www/websites";
	  extraConfig = ''
		error_page 404 /error-page.html;
	  '';

	  locations."/" = { 
		index = "index.html";
	  };

	  locations."/error-page" = { 
		index = "error-page.html";
	  };

	  locations."/irc" = {
		proxyPass = "http://127.0.0.1:9000/";
		extraConfig = ''
			proxy_http_version 1.1;
			proxy_set_header Connection "upgrade";
			proxy_set_header Upgrade $http_upgrade;
			proxy_set_header X-Forwarded-For $remote_addr;
			proxy_set_header X-Forwarded-Proto $scheme;
			proxy_headers_hash_max_size 512;
			proxy_headers_hash_bucket_size 64;

			# by default nginx times out connections in one minute
			proxy_read_timeout 1d;
		'';
	  };

	  locations."/irc/uploads" = {
		proxyPass = "http://127.0.0.1:9000/uploads/";
		extraConfig = ''
			proxy_set_header X-Forwarded-For $remote_addr;
		'';
	  };
	};
  };
}
