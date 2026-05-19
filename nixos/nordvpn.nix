{pkgs, ...}: {
  services.nordvpn.enable = true;

  # Add your user to the nordvpn group — required to talk to the daemon socket.
  users.users.user.extraGroups = ["nordvpn"];

  # The .deb files are proprietary, so you must opt in to unfree explicitly.
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkgs.lib.getName pkg) [
      "nordvpn-base"
      "nordvpn-gui-base"
    ];
}
