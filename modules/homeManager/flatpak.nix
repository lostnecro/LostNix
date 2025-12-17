{ pkgs, ... }:

{
    flatpak={
    enable = true;

    services.flatpak.packages = [
    { appId = "it.mijorus.gearlever";           origin = "flathub"; }
    ];
};
}