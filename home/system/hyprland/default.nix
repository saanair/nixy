# FIXME: After making ambxst a home module, use actual conditionals from the host file instead of wtf this is
{
  pkgs,
  config,
  lib,
  osConfig,
  ...
}: let
  ambxstEnabled = osConfig.programs.ambxst.enable;
in {
  imports = [./caelestiaConfig.nix]; # always imported

  # When ambxst is on, override with just the source line
  wayland.windowManager.hyprland.extraConfig = lib.mkIf ambxstEnabled ''
    source = ~/.local/share/ambxst/hyprland.conf
  '';
}
