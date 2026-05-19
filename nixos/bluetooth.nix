# Bluetooth configuration for NixOS
{pkgs, ...}: {
  services.blueman.enable = true;
  systemd.services.bluetooth.serviceConfig.ExecStart = [
    ""
    "${pkgs.bluez}/libexec/bluetooth/bluetoothd --noplugin=sap"
  ];
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      Policy = {
        AutoEnable = true;
      };
      General = {
        ClassicBondedOnly = false; # important for HID devices like tablets
      };
    };
  };
}
