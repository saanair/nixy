{pkgs, ...}: {
  home.packages = with pkgs; [
    imagemagick
    tree-sitter
    ghostscript
    tectonic
    mermaid-cli
  ];
  programs.nvf.settings.vim.utility.snacks-nvim = {
    enable = true;
    setupOpts = {
      image = {
        enabled = true;
       #doc = {
       #  inline = false;
       #  float = true;
       #};
      };
      picker.enabled = true;
      explorer.enabled = true;
      quickfile.enabled = true;
      statuscolumn.enabled = true;
      zen.enabled = true;
      bufdelete.enabled = true;
      gitsigns.enabled = false;
      #added
      bigfile.enabled = true;
      dashboard.enabled = true;
      notifier.enabled = true;
    };
  };
}
