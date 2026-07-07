{
  pkgs,
  pkgs-stable,
  inputs,
  ...
}: {
  home.packages =
    (with pkgs; [
      # Unstable: latest toolchain versions preferred for dev
      go
      bun
      nodejs
      air
      duckdb
      claude-code
      inputs.bun2nix.packages.${stdenv.hostPlatform.system}.default
      lua
      (python313Packages.euporie.overridePythonAttrs (old: {
        propagatedBuildInputs = (old.propagatedBuildInputs or []) ++ [ python313Packages.asyncssh ];
      }))
      opencode
    ])
    ++ (with pkgs-stable; [
      docker
      python3
      jq
      just
    ]);
}
