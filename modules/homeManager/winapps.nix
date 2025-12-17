{ pkgs, inputs, ... }:

{

    xdg.configFile = {
    "winapps/compose.yaml".source = ./winapps/compose.yaml;
    "winapps/basic.txt".source = ./winapps/basic.txt;
    };
}