{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  name = "corne-dev";

  buildInputs = with pkgs; [
    qmk
    dos2unix
  ];
}
