{pkgs, ...}: {
  services.opentabletdriver = {
    enable = true;
    daemon.enable = true;
  };
}
