FROM alpine:3.14
RUN apk add --no-cache git
RUN adduser -h /home/user -D user
RUN mkdir -p /data-volume/ido ; chown -R user /data-volume/ido
VOLUME ["/data-volume/ido"]
#RUN adduser -h /home/user -D user
USER user
