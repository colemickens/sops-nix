{ pkgs ? import <nixpkgs> {} }: let
  vendorSha256 = "sha256-RyXhyqZpfXzWiS4IGCxUD/r20R2rys5zyfZXcPrbnnQ=";
in rec {
  sops-init-gpg-key = pkgs.callPackage ./pkgs/sops-init-gpg-key {};
  sops-install-secrets = pkgs.callPackage ./pkgs/sops-install-secrets {
    inherit vendorSha256;
  };
  sops-pgp-hook = pkgs.callPackage ./pkgs/sops-pgp-hook {};

  ssh-to-pgp = pkgs.callPackage ./pkgs/ssh-to-pgp {
    inherit vendorSha256;
  };
}
