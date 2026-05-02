{config, ...}: {
  imports = [
    # Mostly system related configuration
    #  ../../nixos/nvidia.nix # CHANGED: Remove this line if you don't have an Nvidia GPU
    ../../nixos/audio.nix
    ../../nixos/bluetooth.nix
    ../../nixos/fonts.nix
    ../../nixos/home-manager.nix
    ../../nixos/nix.nix
    ../../nixos/systemd-boot.nix
    ../../nixos/sddm.nix
    ../../nixos/users.nix
    ../../nixos/utils.nix
    ../../nixos/hyprland.nix
    #  ../../nixos/omen.nix # CHANGED: For my laptop only, remove this (OMEN 16)

    ../../nixos/ambxst.nix

    # You should let those lines as is
    ./hardware-configuration.nix
    ./variables.nix
  ];

  home-manager.users."${config.var.username}" = import ./home.nix;

  # FIXME: Make this an actual variable in variables.nix
  programs.ambxst.enable = true;

  # Don't touch this
  system.stateVersion = "24.05";
}
