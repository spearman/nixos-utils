with import <nixpkgs> {};
let
  version = import ./version.nix;
in
stdenv.mkDerivation rec {
  name = "nixos-utils-" + version;
  src  = ./nixos-utils- + version + ".tar.gz";
  buildInputs = [sudo];
  installPhase = ''
    mkdir -p $out/bin/
    cp ./nixos $out/bin/
  '';
}
