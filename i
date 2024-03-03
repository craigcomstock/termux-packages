set -ex
#rm /data/data/.built-packages/libgrapheme || true
#find /data/data/com.termux -name '*grapheme*' | xargs rm -rf
#./build-package.sh libgrapheme | tee log
rm /data/data/.built-packages/lchat || true
./build-package.sh lchat
