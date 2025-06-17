docker buildx build \
  --platform linux/arm64 \
  --target artifact \
  --output type=local,dest=./dist \
  .

docker buildx build \
  --builder go-pi-builder \
  --platform linux/arm64 \
  --target artifact \
  --output type=local,dest=./dist \
  -t myapp-pi 
  .
