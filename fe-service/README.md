### 实现docker部署前端服务

- 搭建项目
  
  ```sh
  # 新建前端项目
  pnpm create vite@latest fe-service --template react-ts

  ```
- 添加nginx配置 或者 node服务
  
  [nginx配置]（）

- 配置镜像生成器 Dockerfile
  [Dockerfile配置]（）
- 生成镜像，启动容器
  
  ```sh
  # 进入当前目录, 使用当前路径下的Dockerfile 创建镜像
  docker build -t fe-service:v1 .

  # 启动容器
  docker run -d --name fe-service -p 8080:80 fe-service:v1

  ```
- 使用sh脚本实现自动打镜像，同时生成新的容器
  [自动化脚本配置]（）

- 完结撒花🎉🎉