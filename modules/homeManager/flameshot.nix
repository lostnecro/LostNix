{ pkgs, config, ... }:

{
    services.flameshot = {
        enable = true;
        settings.General = {
            useGrimAdapter = true;
        };
    };
}