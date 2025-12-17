{ config, pkgs, ... }:

{
#RDP
networking.firewall.allowedTCPPorts = [ 3389 ];
networking.firewall.allowedUDPPorts = [ 3389 ];
}