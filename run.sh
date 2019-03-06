# 更新代码
cd docker-springboot-demo/ ; git pull ;cd ..

# 打包程序
rm target/*.jar -f
cd docker-springboot-demo/
mvn clean package
cp target/quick-docker-1.0-SNAPSHOT.jar ../target/
cd ..
mv target/quick-docker-1.0-SNAPSHOT.jar target/spring-hello.jar

# 构建镜像
sh build-image.sh
docker-compose up -d
