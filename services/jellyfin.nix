{ pkgs, lib,config, ... }:

{
  networking.firewall.allowedTCPPorts = [
    8096
  ];

  services.jellyfin = {
    enable = true;
  };

  # hardware acceleration for video rendering
  nixpkgs.config.packageOverrides = pkgs: {
    vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
  };

  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver
      vaapiIntel
      vaapiVdpau
      libvdpau-va-gl
      intel-compute-runtime # OpenCL filter support (hardware tonemapping and subtitle burn-in)
    ];
  };

  # Override default hardening measure from NixOS
  systemd.services.jellyfin.serviceConfig.PrivateDevices = lib.mkForce false;  
}
