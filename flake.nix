{
    description = "DevShell";

    outputs = inputs @ {...}: let
        # NOTE: hard-coded for now
        system = "x86_64-linux";

        pkgs = import inputs.nixpkgs {
            inherit system;
        };
    in {
        devShells."${system}".default = pkgs.mkShell {
            packages = with pkgs; [
                zsh
    
                nasm
                nasmfmt
            ];

            shellHook = ''
                exec zsh
            '';
        };
    };

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };
}
