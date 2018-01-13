# cwebide

### 构建镜像方法:

docker build . -t cwebide

### 运行方法:

docker run -d -p <localip>:<localport>:8080 cwebide

** 注意，使用本地IP 创建运行起来的webide ，否则，整个容器将暴露在公网，坏人就可以为所欲为了。**

### 成功运行截图:

![运行成功](ok.jpg)
