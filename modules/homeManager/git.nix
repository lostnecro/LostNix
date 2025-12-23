{pkgs, inputs, ...}:

{
  programs.gh = {
  enable = true;
  settings = {
    git_protocol = "ssh";
    prompt = "enabled";
  };
  extensions = with pkgs; [ gh-dash ]; 
  };

  programs.git = {
  enable = true;
  # ... your other config ...
  extraConfig = {
    credential.helper = "${pkgs.gh}/bin/gh auth git-credential";
    };
  };
}