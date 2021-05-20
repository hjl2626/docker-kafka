# docker-kafka
docker kafka
原生kafka
相关配置文件地址
[github](https://github.com/hjl2626/docker-kafka)

## 启动方式
mkdir -p /data/kakfa/data/
mkdir -p /data/kakfa/config/


数据目录, 端口 , zk地址请修改 server.properties
docker run -itd --name kafka \
-p 9092:9092 \
-v /data/kakfa/data:/data/kafka-logs \
-v/data/kakfa/config:/opt/kafka/config \
kafka:2.12-2.6.2



## 集群部署

docker-compose -f docker-compose.yml up -d