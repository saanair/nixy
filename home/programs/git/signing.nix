# This file is used to sign git commits using an SSH key.
{
  # CHANGED: change this to your own SSH key.
  # FIXME: Add a proper SSH key here
  home.file.".ssh/allowed_signers".text = " ";

  programs.git = {
    signing.format = "openpgp";
    settings = {
      commit.gpgsign = true;
      gpg.ssh.allowedSignersFile = "~/.ssh/allowed_signers";
      gpg.format = "ssh";
      user.signingkey = "~/.ssh/key.pub";
    };
  };
}
