{
  description = "C/C++ environment";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    staging.url = "github:NixOS/nixpkgs/staging-next";
    devshell.url = "github:numtide/devshell";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, utils, ... }@inputs:
    utils.lib.eachDefaultSystem (
      system:
      let
        p = import nixpkgs {
          inherit system;
          overlays = [ inputs.devshell.overlay ];
        };
        ps = import inputs.staging { inherit system; };
        llvm = ps.llvmPackages_latest;
        lib = nixpkgs.lib;
      in
      {
        devShell = p.mkShell rec {
          name = "C";
          nativeBuildInputs = [
            # builder
            p.gnumake
            p.bear
            # debugger
            llvm.lldb
            p.gdb
            # fix headers not found
            ps.clang-tools
            # LSP and compiler
            llvm.clang
          ];
          buildInputs = [
            # stdlib for cpp
            llvm.libcxx
          ];
          CPATH = lib.makeSearchPathOutput "dev" "include" buildInputs;
        };
      }
    );
}
