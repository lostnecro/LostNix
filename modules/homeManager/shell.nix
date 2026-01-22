{ pkgs , ... }:

{
    #Default shell
    programs.bash = {
        enable = true;
        initExtra = "fastfetch";
    };

    #Shell aliases
    home.shellAliases = {
        #LSW Aliases
        lsw-on = "docker compose --file ~/.config/winapps/compose.yaml start";
        lsw-off = "docker compose --file ~/.config/winapps/compose.yaml stop";
        lsw-restart = "docker compose --file ~/.config/winapps/compose.yaml restart";
        lsw-kill = "docker compose --file ~/.config/winapps/compose.yaml kill";
        cat = "bat";
    };

    home.sessionVariables = {
        EDITOR = "nvim";
        #WAYLAND_DISPLAY= "autorandr";
    };

    home.sessionPath = [
      "~/.local/bin"
    ];
}
