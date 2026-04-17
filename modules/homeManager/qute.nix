{ ... }:

{
  programs.qutebrowser = {
    enable = true;
    searchEngines = {
      DEFAULT = "https://www.google.com/search?q={}";
      ddg = "https://duckduckgo.com/search?q={}";
      wk = "https://en.wikipedia.org/wiki/{}";
      yt = "https://www.youtube.com/results?search_query={}";
    };
    settings = {
      tabs.position = "bottom";

      url.default_page = "https://google.com/";
      content.blocking.method = "adblock";
      content.javascript.enabled = true;
      content.images = true;
      content.notifications.enabled = false;
      downloads.location.directory = "~/Downloads";
      editor.command = [
        "ghostty"
        "-e"
        "nvim"
        "{}"
      ];

      colors.webpage.preferred_color_scheme = "dark";
      colors.webpage.darkmode.enabled = true;

      content.geolocation = false;
      auto_save.session = false;
    };
  };
}
