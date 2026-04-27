{
  config,
  lib,
  ...
}: {
  imports = [
    # Choose your theme here:
    ../../themes/darkviolet.nix
  ];

  config.var = {
    hostname = "thinkpad";
    username = "user";
    configDirectory =
      "/home/"
      + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "us";

    location = "Dubai";
    timeZone = "Asia/Dubai";
    defaultLocale = "en_HK.UTF-8";
    extraLocale = "en_GB.UTF-8";

    git = {
      username = "saanair";
      email = "saahil.sn@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # DON'T TOUCH THIS
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = {};
    };
  };
}
