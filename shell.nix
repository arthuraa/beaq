{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let coq = coq_8_14;
    coqPackages = coqPackages_8_14;
    ssreflect = coqPackages.ssreflect;
    deriving = coqPackages.deriving;
    extructures = coqPackages.extructures; in

pkgs.mkShell {
  buildInputs = [ coq ssreflect deriving extructures ];
}
