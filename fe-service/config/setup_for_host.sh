image_name=fe-service
version=$(date +%M%S)
container_name=fe-service-container
host_port=3366
container_port=80

echo '构建镜像： docker build...'
docker build -t $image_name:$version .
echo '判断容器是否同名....'
if [ "$(docker ps -q -f name=$container_name-$version)" ]; then
  echo '删除容器：docker rm...'
  docker rm -f $container_name
fi

echo '生成新的容器：docker run...'
docker run -d --name $container_name-$version -p $host_port:$container_port $image_name:$version
echo '完成啦....🎉'
