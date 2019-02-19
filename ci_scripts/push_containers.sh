export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`
export IMAGE_NAME=volt-synchronizer

docker build -t cachengo/$IMAGE_NAME-$AARCH:$IMAGE_TAG -f Dockerfile.synchronizer .
docker push cachengo/$IMAGE_NAME-$AARCH:$IMAGE_TAG
