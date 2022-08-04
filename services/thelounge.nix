{
  networking.firewall.allowedTCPPorts = [ 
    9000
    6667 # unencrypted connections
    6697 # TLS encrypted connections
  ];

  services.thelounge = {
    enable = true;
    port = 9000;

    extraConfig = {
      # host = undefined;
      reverseProxy = true;
      theme="morning";
      prefetch = true;
      prefetchMaxImageSize=5120; # kb

      # file upload
      fileUpload = {
	enable = true;
	maxFileSize = 10240; # kb
	# baseUrl needs reverse-proxy configured, else set to null
	baseUrl = null;
      };

      # default settings
      defaults = {
        name = "Rizon IRC";
        host = "irc.rizon.net";
        port = 6697;
        tls = true;
        rejectUnauthorized = true;
        nick = "Mizu25";
        username = "Mizu-nanoha";
        realname = "Liam Ash";
        join = "#nanoha";
      };
    };
  };
}
