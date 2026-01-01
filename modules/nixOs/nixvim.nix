{ config, pkgs, inputs, ... }:

{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    
    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;
    };
    colorschemes.tokyonight.enable = true;

    plugins = {
      lualine.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
      neo-tree.enable = true;
      markdown-preview.enable = true;
      toggleterm.enable = true;
      barbar.enable = true;
      blink.enable = true;
      blink-cmp.setupLspCapabilities = true;
      ccc.enable = true;
      dropbar.enable = true;
      #alpha.enable = true; # Main menu

      lsp = {
        enable = true;
        servers = {
          nil_ls.enable = true;    # Nix LSP
          pyright.enable = true;   # Python LSP
          html.enable = true;
          marksman.enable = true;
        };
      };
    };

    globals.mapleader = " ";
    keymaps = [
      {
        mode = "n";
        key = "<leader>tr";
        action = ":ToggleTerm size=15 dir=~/Desktop direction=horizontal name=desktop<CR>";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = ":BufferNext<CR>";
        options = {
        silent = true;
        desc = "Próximo Buffer";
        };
      }
      {
        mode = "n";
        key = "<C-h>";
        action = ":BufferPrevious<CR>";
        options = {
        silent = true;
        desc = "Buffer Anterior";
        };
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = ":Telescope find_files<CR>";
      }
      {
        mode = "n";
        key = "<leader>Tt";
        action = ":Neotree toggle<CR>";
      }
      ];
  };
}

