# prefect-ai-worker


## 设置代理

set HTTPS_PROXY=http://192.168.0.107:7890

docker login registry-1.docker.io

## 构建镜像

podman build -t rocksun/prefect-ai-worker:1.0.2 .

## 推送镜像

podman push rocksun/prefect-ai-worker:1.0.2  

## 备注

podman 构建时其实有问题，用 docker 在 linux 下重新操作没问题。