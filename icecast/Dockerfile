FROM alpine:latest
LABEL maintainer "infra@radionoden.se"

RUN addgroup -S icecast
RUN adduser -S icecast

RUN apk add icecast mailcap
RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY icecast.xml /etc/icecast.xml
COPY silence-44100-192k-stereo.mp3 /usr/share/icecast/web/silence.mp3

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
CMD icecast -c /etc/icecast.xml
