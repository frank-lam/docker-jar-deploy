# 配置
## 代码项目名称
project_name='docker-springboot-demo'

# 更新代码
cd $project_name/ ; git pull ;cd ..

# 打包程序
rm target/*.jar -f
cd $project_name/
mvn clean package
cp target/*.jar ../target/ -f
cd ..

# 启动项目
docker-compose up -d --build --force-recreate

# 构建镜像
# sh build-image.sh
# docker-compose up -d
