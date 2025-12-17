{ pkgs, inputs, ... }:

{
    programs.fastfetch = {
        enable = true;
        settings = {
            logo = {
                #type = "kitty";
                source = "/etc/nixos/modules/homeManager/ascii.txt";
            };
            padding = 2;
            modules = [
                "os"
                "host"
                "kernel"
                "datetime"
                "uptime"
                "break"
                "packages"
                "shell"
                "memory"
                "disk"
                "battery"
                "cpu"
                "cpu_usage"
                "gpu"
                "network"
                "locale"
                ];
        };
    };
}