{lib, ...}: {
  programs.nvf.settings.vim = {
    viAlias = true;
    vimAlias = true;
    withNodeJs = true;

    # stuff I added
    debugMode = {
      enable = false;
      level = 16;
      logFile = "/tmp/nvim.log";
    };
    opts.expandtab = true;
    spellcheck = {
      enable = true;
      programmingWordlist.enable = true;
    };
    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };
    autopairs.nvim-autopairs.enable = true;
    filetree = {
      neo-tree = {
        enable = true;
      };
    };
    telescope.enable = true;
   #extraPlugins = {
   #  rustaceanvim = {
   #    enable = true;
   #  };
   #};
    # back to default
    # syntaxHighlighting = true;
    options = {
      autoindent = true;
      smartindent = true;
      shiftwidth = 2;
      foldlevel = 99;
      foldcolumn = "auto:1";
      mousescroll = "ver:1,hor:1";
      mousemoveevent = true;
      fillchars = "eob:‿,fold: ,foldopen:▼,foldsep:⸽,foldclose:⏵";
      signcolumn = "yes";
      tabstop = 2;
      softtabstop = 2;
      wrap = true;
    };
    globals = {
      navic_silence = true; # navic tries to attach multiple LSPs and fails
      suda_smart_edit = 1; # use super user write automatically
      neovide_scale_factor = 0.7;
      neovide_cursor_animation_length = 0.1;
      neovide_cursor_short_animation_length = 0;
    };
    clipboard = {
      enable = true;
      registers = "unnamedplus";
      providers.wl-copy.enable = true;
    };
   #luaConfigRC.osc52-clipboard = ''
   #  vim.g.clipboard = {
   #    name = 'OSC 52',
   #    copy = {
   #      ['+'] = require('vim.ui.clipboard.osc52').copy '+',
   #      ['*'] = require('vim.ui.clipboard.osc52').copy '*',
   #    },
   #    paste = {
   #      ['+'] = require('vim.ui.clipboard.osc52').paste '+',
   #      ['*'] = require('vim.ui.clipboard.osc52').paste '*',
   #    },
   #  }
   #'';
    theme = {
      enable = true;
      name = lib.mkForce "catppuccin";
      style = lib.mkForce "mocha";
      transparent = lib.mkForce true;
    };
  };
}
