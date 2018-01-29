# NixOS Utils

> `nixos` command-line utility

This derivation installs an executable bash script called `nixos` into the path
that accepts various subcommands for common operations such as searching for
packages or querying system configuration.


## Installation

To install at the system level, add the following to the
`environment.systemPackages` list in `/etc/nixos/configuration.nix`:

```
  environment.systemPackages = with pkgs; [
    ...
    (import (fetchgit {
      url = git://github.com/spearman/nixos-utils.git;
      rev = "<revision-hash>";
      sha256 = "<source-hash>";
    }));
  ];
```

where `rev` is the hash of the desired git commit and `sha256` is the source
hash which can be prefetched for a particular revision from the command-line
with the `nix-prefetch-git` tool:

```
$ nix-prefetch-git --url git://github.com/spearman/nixos-utils.git --rev <revision-hash>
```

The `--rev <revision-hash>` argument is optional if you just want to get the
source hash of the latest revision.


## Usage

Search packages (`$ nix-env -qaP --description <query>`):

    $ nixos search <query>

Show the nixpkgs directory (`$ nix-instantiate --find-file nixpkgs`):

    $ nixos nixpkgs dir

List system generations (`$ sudo nix-env -p /nix/var/nix/profiles/system
--list-generations`):

    $ nixos system generations

List system packages (`$ nix-store -q --references /var/run/current-system/sw |
cut -d'-' -f2-`):

    $ nixos system packages
