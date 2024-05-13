# prefect-ai-worker


## 设置代理

set HTTPS_PROXY=http://192.168.0.107:7890

docker login registry-1.docker.io

## 构建镜像

podman build -t rocksun/prefect-ai-worker .

## 推送镜像

podman push docker://docker.io/rocksun/prefect-ai-worker:1.0.0  

docker://docker.io
