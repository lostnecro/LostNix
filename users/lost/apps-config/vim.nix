{ config, pkgs, inputs, ... }:

{
  
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;

    colorschemes.tokyonight.enable = true;
    # Modular plugins
    plugins.lualine.enable = true;
    plugins.dropbar.enable = true;
    plugins.bufferline.enable = true;
    plugins.web-devicons.enable = true;
    plugins.illuminate.enable = true;
    plugins.dashboard.enable = true;
    plugins.toggleterm.enable = true;
    plugins.telescope.enable = true;
    plugins.chadtree.enable = true;
    plugins.yazi.enable = true;
    plugins.which-key.enable = true;


    # Non-modular plugins
    extraPlugins = with pkgs.vimPlugins; [
    ];
  
    # Autocomplete
    plugins.blink-cmp.enable = true;
    plugins.blink-cmp-git.enable = true;


    # Options
    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      ignorecase = true;
      smartcase = true;
      hlsearch = true;
      incsearch = true;

      termguicolors = true;
      mouse = "a";
      clipboard = "unnamedplus";
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>CHADopen<cr>";
      }
      {
        mode = "n";
        key = "<leader>[";
        action = "<cmd>BufferLineCyclePrev<cr>";
      }
      {
        mode = "n";
        key = "<leader>]";
        action = "<cmd>BufferLineCycleNext<cr>";
      }
      {
        mode = "n";
        key = "<leader>y";
        action = "<cmd>Yazi<cr>";
      }
      {
        mode = "n";
        key = "<leader>tt";
        action = "<cmd>ToggleTerm<cr>";
      }
      {
        mode = "n";
        key = "<leader>´c";
        action = "<cmd>BufferLinePickClose<cr>";
      }
    ];
  };
}
