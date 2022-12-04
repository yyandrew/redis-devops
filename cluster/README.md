1. 启动6个redis节点
```
redis-server conf/redis-7000.conf &
redis-server conf/redis-7001.conf &
redis-server conf/redis-7002.conf &
redis-server conf/redis-7003.conf &
redis-server conf/redis-7004.conf &
redis-server conf/redis-7005.conf &
```
2. 生成集群
运行命令将7000，7001，7002设置成3个主节点

将7003为7000的从节点，7004为7001的从节点，7005为7002的从节点
```
redis-cli --cluster create 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 --cluster-replicas 1
```
