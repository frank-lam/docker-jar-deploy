# 配置
## 当前部分项目目录(绝对路径)
deploy_path='/usr/local/docker/ai-cloud-producer'
## 代码项目目录路径(相对路径)
project_path='ai-cloud/model-producer'
# 更新代码
cd $project_path
git pull
cd $deploy_path
# 打包程序
rm target/*.jar -f ;
cd $project_path ;
mvn clean package
cp target/*.jar $deploy_path/target/ -f
cd $deploy_path
# 启动项目
docker-compose up -d --build --force-recreate
# 构建镜像
# sh build-image.sh
# docker-compose up -d
