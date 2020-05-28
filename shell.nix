#!/usr/bin/env nix-shell
with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "spamblockersbot-docs";
    buildInputs = [ nodejs ruby lzma zlib libffi ];
    shellHook =
  ''
    bundle install
    bundle exec middleman server
  '';
}
