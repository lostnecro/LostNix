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
    };

    globals.mapleader = " ";
    keymaps = [
      {
        mode = "n";
        key = "<leader>t";
        action = ":ToggleTerm size=15 dir=~/Desktop direction=horizontal name=desktop<CR>";
      }
    ];
  
  };
}
