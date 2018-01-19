# NixOS Utils

> `nixos` command-line utility

This derivation installs an executable bash script called `nixos` into the path
that accepts various subcommands for common operations such as searching for
packages or querying system configuration.

## Usage

Search packages:

    $ nixos search <query>

Show the nixpkgs directory:

    $ nixos nixpkgs dir

List system generations:

    $ nixos system generations

List system packages:

    $ nixos system packages
