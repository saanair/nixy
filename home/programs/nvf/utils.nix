{pkgs, ...}: {
  programs.nvf.settings.vim = {
    undoFile.enable = true;
    utility = {
      motion = {
        flash-nvim.enable = true;
       #hop.enable = true;
        leap.enable = true;
        precognition.enable = true;
      };
      outline.aerial-nvim.enable = true;
      ccc.enable = false;
      vim-wakatime.enable = false;
      diffview-nvim.enable = true;
      yanky-nvim .enable = false;
      qmk-nvim.enable = false; # requires hardware specific options
      icon-picker.enable = true;
      surround.enable = true;
      leetcode-nvim.enable = true;
      multicursors.enable = true;
      smart-splits.enable = true;
      undotree.enable = true;
      nvim-biscuits.enable = true;
      grug-far-nvim.enable = true;

      images = {
        image-nvim.enable = false;
        img-clip.enable = true;
      };
    };
    tabline.nvimBufferline.enable = true;
    notes = {
      neorg.enable = true;
      orgmode.enable = false;
      mind-nvim.enable = false;
      todo-comments.enable = true;
    };
    assistant = {
      chatgpt.enable = false;
      copilot = {
        enable = false;
        cmp.enable = true;
      };
      codecompanion-nvim.enable = false;
      avante-nvim.enable = true;
    };
    statusline.lualine.enable = true;

    autocomplete = {
      nvim-cmp = {
        enable = false;
        #sources = {
        #  buffer = "[Buffer]";
        #  path = "[Path]";
        #};
        #sourcePlugins = [
        #  pkgs.vimPlugins.cmp-cmdline
        #];
      };
      blink-cmp.enable = true;
    };

    snippets.luasnip.enable = true;
    ui = {
      borders.enable = true;
      noice.enable = true;
      colorizer.enable = true;
      modes-nvim.enable = false; # the theme looks terrible with catppuccin
      illuminate.enable = true;
      breadcrumbs = {
        enable = true;
        navbuddy.enable = true;
      };
      smartcolumn = {
        enable = true;
        setupOpts.custom_colorcolumn = {
          # this is a freeform module, it's `buftype = int;` for configuring column position
          nix = "110";
          ruby = "120";
          java = "130";
          go = ["90" "130"];
        };
      };
      fastaction.enable = true;
    };
    git = {
      enable = true;
      gitsigns.enable = false;
      gitsigns.codeActions.enable = false;
      neogit.enable = true;
    };
    terminal.toggleterm = {
      enable = true;
      lazygit = {
        enable = true;
        mappings.open = "<leader>gl";
      };
    };
    visuals = {
      rainbow-delimiters.enable = true;
      nvim-scrollbar = {
        enable = true;
      };
      nvim-web-devicons.enable = true;
      nvim-cursorline.enable = true;
      cinnamon-nvim.enable = true;
      fidget-nvim.enable = true;

      highlight-undo.enable = true;
      blink-indent.enable = true;
      indent-blankline.enable = true;

      # Fun
      cellular-automaton.enable = true;
    };

    minimap = {
      minimap-vim.enable = true;
      codewindow.enable = false;
    };

    dashboard = {
      dashboard-nvim.enable = false;
      alpha.enable = true;
    };

    notify = {
      nvim-notify.enable = true;
    };

    projects = {
      project-nvim.enable = true;
    };

    session = {
      nvim-session-manager.enable = false;
    };

    gestures = {
      gesture-nvim.enable = false;
    };

    comments = {
      comment-nvim.enable = true;
    };

    presence = {
      neocord.enable = false;
    };
  };
}
