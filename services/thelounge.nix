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
      reverseProxy = false;
      theme="morning";
      prefetch="true";
      prefetchMaxImageSize="2048"; # kb
      fileupload="true";

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
