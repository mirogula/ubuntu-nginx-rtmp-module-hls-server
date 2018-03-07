FROM ubuntu:16.04
WORKDIR /root/
RUN apt-get update && \
	apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev git ffmpeg wget
RUN git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git && \
	wget http://nginx.org/download/nginx-1.12.2.tar.gz && \
	tar -xf nginx-1.12.2.tar.gz
RUN cd nginx-1.12.2 && \
	./configure --with-file-aio --with-http_ssl_module --add-module=../nginx-rtmp-module && \
	make -j 1 && \
	make install && \
	cp /usr/local/nginx/conf/nginx.conf /usr/local/nginx/conf/nginx.conf.orig && \
	mkdir -p /var/lib/nginx/hls/ && \
	mkdir -p /var/lib/nginx/www/
COPY nginx.conf /usr/local/nginx/conf/
COPY index.html /var/lib/nginx/www/
EXPOSE 80 1935 8080
CMD /usr/local/nginx/sbin/nginx && tail -F -f /usr/local/nginx/logs/error.log -f /usr/local/nginx/logs/access.log
