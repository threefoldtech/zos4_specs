#!/usr/bin/env bash
set -e

cd ~/code/github/threefoldtech/zos4_specs
SOURCE=${BASH_SOURCE[0]}
DIR_OF_THIS_SCRIPT="$( dirname "$SOURCE" )"
ABS_DIR_OF_SCRIPT="$( realpath $DIR_OF_THIS_SCRIPT )"
mkdir -p ~/.vmodules/threefoldtech
rm -f ~/.vmodules/threefoldtech/zos
ln -s $ABS_DIR_OF_SCRIPT/zos ~/.vmodules/threefoldtech/zos

echo "INSTALL OK"

