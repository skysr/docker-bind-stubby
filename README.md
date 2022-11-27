# docker-bind-stubby
A docker image which includs Bind and Stubby for DNS over TLS

使用方法

1、docker build -f Dockerfile -t stubby-bing:2.8 .

2、docker run -p 10.0.8.9:53:53/udp -it stubby-bing:2.8
