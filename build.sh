rm -rf builds
mkdir builds

COMPILER=x86_64-linux-musl
TARGET=x86_64

echo "++ BUILD FOR $TARGET"

docker build --network=host  -t c3c/passthehash -f Dockerfile.build .
containerid=`docker create c3c/passthehash`
docker cp $containerid:/work/curl builds/pth-curl
