# 配置

## 当前部分项目目录(绝对路径)
deploy_path='/var/www/ai-cloud-producer'

## 代码项目目录路径
project_path='docker-springboot-demo'

# 更新代码
cd $project_path/ ; git pull ;cd ..

# 打包程序
rm target/*.jar -f
cd $project_name/
mvn clean package
cp target/*.jar $deploy_path/target/ -f
cd $deploy_path

# 启动项目
docker-compose up -d --build --force-recreate

# 构建镜像
# sh build-image.sh
# docker-compose up -d
