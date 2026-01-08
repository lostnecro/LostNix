{ pkgs, config, ... }:

{
    services.flameshot = {
        enable = false;
        settings.General = {
            useGrimAdapter = true;
        };
    };
}
