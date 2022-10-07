{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.haskellPackages.ghcWithHoogle (hps: [
       hps.aeson
       hps.constraints
       hps.hspec
        hps.QuickCheck
        hps.aeson
        hps.base
        hps.blaze-html
        hps.blaze-markup
        hps.binary
        hps.bytestring
        hps.cmdargs
        hps.conduit
        hps.conduit-extra
        hps.connection
        hps.containers
        hps.deepseq
        hps.directory
        hps.extra
        hps.filepath
        hps.foundation
        hps.old-locale
        hps.hashable
        hps.haskell-src-exts
        hps.http-conduit
        hps.http-types
        hps.js-flot
        hps.js-jquery
        hps.mmap
        hps.process-extras
        hps.resourcet
        hps.storable-tuple
        hps.tar
        hps.template-haskell
        hps.text
        hps.time
        hps.transformers
        hps.uniplate
        hps.utf8-string
        hps.vector
        hps.wai
        hps.wai-logger
        hps.warp
        hps.warp-tls
        hps.zlib
    ]))

    pkgs.cabal-install
    pkgs.haskell-language-server
  ];
}
