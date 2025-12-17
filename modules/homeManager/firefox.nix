{ pkgs, inputs, ... }:

{
    programs.firefox = {
        enable = true;

        profiles.pessoal = {
            name = "Pessoal";
            isDefault = true;

            settings = {
                #Start page
                "browser.startup.homepage" = "https://google.com";
                
                #Dark mode
                "browser.in-content.dark-mode" = true;
                "ui.systemUsesDarkTheme" = 1;

                #Disable pocket
                "extensions.pocket.enabled" = false;

                #Search engine
                "browser.search.defaultenginename" = "DuckDuckGo";
                "browser.search.region" = "BR";
            };
        };
    };
}
