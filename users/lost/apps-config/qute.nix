{ ... }:

{
  programs.qutebrowser = {
    enable = true;
    searchEngines = {
      g = "https://www.google.com/search?hl=en&q={}";
      aw = "https://wiki.archlinux.org/?search={}";
      nw = "https://wiki.nixos.org/index.php?search={}";
    };
    settings = {
      content.blocking.enabled = true;
    };
  };
}
