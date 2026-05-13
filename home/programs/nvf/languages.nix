{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    tree-sitter
  ];
  programs.nvf.settings.vim = {
    diagnostics = {
      enable = true;
      config = {
        signs = {
          text = {
            "vim.diagnostic.severity.Error" = " ";
            "vim.diagnostic.severity.Warn" = " ";
            "vim.diagnostic.severity.Hint" = " ";
            "vim.diagnostic.severity.Info" = " ";
          };
        };
        underline = true;
        update_in_insert = true;
        virtual_text = {
          format =
            lib.generators.mkLuaInline
            /*
            lua
            */
            ''
              function(diagnostic)
                return string.format("%s", diagnostic.message)
                --return string.format("%s (%s)", diagnostic.message, diagnostic.source)
              end
            '';
        };
      };
      nvim-lint = {
        enable = true;
      };
    };
    treesitter = {
      enable = true;
      autotagHtml = true;
      context.enable = true;
      highlight.enable = true;
      grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        typescript # in language settings only tsx gets enabled, not typescript
      ];
    };
   #treesitter.context.enable = true;
    lsp = {
      enable = true;
      presets = {
        tailwindcss-language-server = {
          enable = true;
        };
        harper = {
          enable = true;
        };
      };
      # my stuff
      nvim-docs-view.enable = true;
      # end of my stuff
      trouble.enable = true;
      lspSignature.enable = false;
      lspconfig.enable = true;
      formatOnSave = true;
      mappings.format = null;
      inlayHints.enable = true;
      null-ls.enable = true;
      servers.nixd.settings.nil.nix.autoArchive = true;
      otter-nvim = {
        enable = true;
        setupOpts = {
          buffers.set_filetype = true;
          lsp = {
            diagnostic_update_event = [
              "BufWritePost"
              "InsertLeave"
            ];
          };
        };
      };
      lspkind.enable = true;
      lspsaga = {
        enable = true;
        setupOpts = {
          ui = {
            code_action = "";
          };
          lightbulb = {
            sign = false;
            virtual_text = true;
          };
          breadcrumbs.enable = false;
        };
      };
    };
    languages = {
      enableDAP = true;
      enableExtraDiagnostics = true;
      enableFormat = true;
      enableTreesitter = true;
      python = {
        enable = true;
        lsp = {
          enable = true;
          servers = ["pyright"];
        };
      };
      astro.enable = true;
      go.enable = true;
      markdown = {
        enable = true;
        format.type = ["prettierd"];
        extensions = {
          markview-nvim = {
            enable = true;
          };
        };
        extraDiagnostics.enable = true;
      };
      typescript = {
        enable = true;
        extensions.ts-error-translator.enable = true;
      };
      css.enable = true;
      svelte = {
        enable = true;
        format.enable = false;
      };
      html.enable = true;
      bash.enable = true;
      nix.enable = true;
      # my stuff
      clang.enable = true;
      cmake.enable = true;
      json.enable = true;
      sql.enable = true;
      java.enable = true;
      kotlin.enable = true;
      lua.enable = true;
      typst.enable = true;
      rust = {
        enable = true;
        lsp.enable = true;
        extensions.crates-nvim.enable = true;
      };
      toml.enable = true;
      xml.enable = true;
      tex.enable = true;
      vue.enable = true;
      # less common languages
      openscad.enable = false;
      arduino.enable = false;
      assembly.enable = false;
      nu.enable = false;
      csharp.enable = false;
      julia.enable = false;
      vala.enable = false;
      scala.enable = false;
      r.enable = false;
      gleam.enable = false;
      glsl.enable = false;
      dart.enable = false;
      ocaml.enable = false;
      elixir.enable = false;
      haskell.enable = false;
      hcl.enable = false;
      ruby.enable = false;
      fsharp.enable = false;
      just.enable = false;
      make.enable = false;
      qml.enable = false;
      jinja.enable = false;
      liquid.enable = false;
      tera.enable = false;
      twig.enable = false;
      gettext.enable = false;
      fluent.enable = false;
      jq.enable = false;
      nim.enable = false;
      # end my stuff
    };
    formatter = {
      conform-nvim = {
        enable = true;
        setupOpts.format_after_save = null;
      };
    };
  };
}
