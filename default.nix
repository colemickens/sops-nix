{ pkgs ? import <nixpkgs> {} }: let
  vendorSha256 = "13jksrpjcbh8av8r521fxapd4drbbkvrjiwmr3my0p361h12l0ld";
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
