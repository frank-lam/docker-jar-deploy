# 基于 mvn + docker 的 springboot 项目部署实战

## 前置环境

- docker
- docker-compose
- Jdk 1.8
- maven



## 快速启动

### 文件目录结构

```
├── build-image.sh          构建镜像脚本
├── Dockerfile              镜像文件
├── docker-compose.yml      Docker-compose 启动文件
├── run.sh

├── docker-springboot-demo  Java/SpringBoot 项目代码部分
        ├── src
        └── porm.xml
├── run-logs                项目运行日志文件
├── target                  项目代码生成文件
        ├── src
        └── startup.sh      容器内项目启动文件
```

### 需要配置哪些文件？

将你的代码文件拉到本仓库中，例如本目录中的 `docker-springboot-demo` 目录，当然可以改成你自己的名字，但相应的配置文件中出现的目录名需要修改

1. 配置 docker-compose.yml

```yml
version: '3.1'
serviies:
  # 修改为你的项目名字
  springboot-hello-server:
    restart: always
    build: '.'
    # 修改容器名字，请勿重名，否则无法启动
    container_name: springboot-hello
    # 配置端口号，只需要修改冒号左边的端口即可，右边 8080 是容器中的端口号，请根据实际情况来修改
    ports:
      - 9195:8080
    # 配置数据卷映射目录，修改左边你的日制文件需要保存的位置
    volumes:
      - /run-logs:/webapp/run-logs
```

2. 修改 run.sh 中的配置项

```shell
project_name=‘你的项目名字，和你的代码目录一致’
```

- 注意：请确保 git 的身份验证，否则再 git pull 的步骤会无法更新代码

3. 修改 target/startup.sh 容器内启动文件

```shell
jar_name='你的项目 Jar 包生成文件名'
```

- 注意：可以根据具体运行情况修改

### 项目启动

```shell
sh run.sh
```

