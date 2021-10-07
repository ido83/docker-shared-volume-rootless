FROM alpine:3.14
#install git for fun
RUN apk add --no-cache git
# Create a group and user
RUN addgroup -S ido && adduser -S ido -G ido
#create folder and give permissions to user ido
RUN mkdir -p /data-volume/ido ; chown -R ido:ido /data-volume/ido
# volume mount point from Dockerfile, this fix the permissions issue
VOLUME ["/data-volume/ido"]
USER ido

