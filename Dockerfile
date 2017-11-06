from nginx:latest
ENV CLIENT_ID 00000000-0000-0000-0000-000000000000
ENV CLIENT_ALTERID 64
ENV CLIENT_SECURITY aes-128-gcm
ADD conf/nginx.conf /etc/nginx/
ADD conf/v2ray.conf /etc/nginx/conf.d/
ADD v2ray /usr/local/bin/
ADD entrypoint.sh /etc/
RUN chmod -R 777 /var/log/nginx /var/cache/nginx /var/run \
	&& chgrp -R 0 /etc/nginx \
	&& chmod -R g+rwx /etc/nginx
RUN mkdir /var/log/v2ray \
	&& mkdir /etc/v2ray
ADD conf/config.json /etc/v2ray/
RUN chmod 777 /usr/local/bin/v2ray \
	&& chmod -R 777 /var/log/v2ray \
	&& chmod -R 777 /etc/v2ray \
	&& rm -f /etc/nginx/conf.d/default.conf \
	&& chmod 777 /etc/entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/etc/entrypoint.sh"]
