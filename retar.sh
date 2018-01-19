#!/bin/sh

version=$(echo $(cat version.nix) | tr -d '"')

set -x

tar -zcf nixos-utils-$version.tar.gz nixos-utils-$version
