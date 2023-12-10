set -ex
cd ~/code/github/threefoldtech/zos4_specs

rm -rf _docs
rm -rf docs

cd zos

v fmt -w .
v doc -m -f html . -readme -comments -no-timestamp -o ../

cd ..

mv _docs docs
open docs/index.html
