# Dockerfile for lighttpd

FROM alpine

ENV LIGHTTPD_VERSION=1.4.55-r1

RUN apk add --update --no-cache \
	lighttpd=${LIGHTTPD_VERSION} \
	lighttpd-mod_auth \
  && rm -rf /var/cache/apk/*

EXPOSE 80

VOLUME /var/www/localhost
VOLUME /etc/lighttpd

COPY ./htdocs/* /var/www/localhost/htdocs

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]