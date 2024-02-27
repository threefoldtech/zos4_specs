#!/bin/bash
set -ex

hero mdbook -u https://github.com/threefoldtech/zos4_specs/tree/development/mdbook/heroscript
rsync -rv ~/hero/www/info/zosspecs/ root@info.ourworld.tf:/root/hero/www/info/zosspecs/

cd ~/code/github/threefoldtech/zos4_specs
bash doc.sh

rsync -rv docs/ root@info.ourworld.tf:/root/hero/www/info/zosspecs_v/