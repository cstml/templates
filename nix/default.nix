# A default nix-environment or something to start from 
{pkgs ? import <nixpkgs> { }}:
pkgs.mkShell{
  name = "clojure-tic-tac-toe";
  buildInputs = with pkgs;[
    clojure
    leiningen
    emacs26Packages.magit
    emacs26Packages.paredit
    jdk
    #add more if needed
  ];
  shellHook = ''
    gsettings set org.gnome.desktop.wm.preferences audible-bell false && echo "turn off the Gnome bell of hell"
    echo "let me open emacs for you" && emacs & 
  '';
  dev_env = true;
}
