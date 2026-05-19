{
  config,
  lib,
  pkgs,
  ...
}: {
  # Enable OpenTabletDriver
  hardware.opentabletdriver = {
    enable = false;
    daemon.enable = true;
  };
  #hardware.uinput.enable = true;
  #boot.kernelModules = [ "uinput" ];
  boot.kernelModules = ["wacom"];
}
