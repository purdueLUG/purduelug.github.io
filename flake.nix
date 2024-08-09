{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    devshell.url = "github:numtide/devshell";
  };

  outputs = inputs@{ flake-parts, ... }: flake-parts.lib.mkFlake { inherit inputs; } ({ self, ... }: {
    systems = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];

    imports = [
      inputs.devshell.flakeModule
    ];

    perSystem = { pkgs, lib, config, ... }: {
      packages.default = pkgs.stdenvNoCC.mkDerivation {
        pname = "plug-website";
        version = if (self ? rev) then self.rev else "unstable";

        src = lib.cleanSource ./.;

        nativeBuildInputs = with pkgs; [
          hugo
        ];

        buildPhase = ''
          hugo
          cp -r ./public $out
        '';
      };

      devshells.default.devshell = {
        name = "plug-website";
        packagesFrom = [ config.packages.default ];
      };
    };
  });
}
