### 主从复制
启动两个节点
```
redis-server conf/redis-7010.conf &
redis-server conf/redis-7011.conf &
```
将7011设置成从节点
```
redis-cli -p 7011
127.0.0.1:7011> SLAVEOF 127.0.0.1 7010
127.0.0.1:7011> info replication # 检查同步状态
```
### 位图功能
```
redis-cli -p 7010 script load "$(cat bitmap.lua)" # 加载Lua脚本
redis-cli -p 7010
EVALSHA 14fccd206ddaef0980cf04b8786b5a861ba94863 0
SCAN 0
GETBIT big_bitmap 1000000000
```

