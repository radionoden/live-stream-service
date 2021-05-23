FROM ubuntu:20.10
LABEL maintainer "infra@radionoden.se"

RUN apt-get -y update && apt-get install -y icecast2

RUN mkdir /app

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

COPY icecast.xml /app/icecast.xml
COPY silence-44100-192k-stereo.mp3 /usr/share/icecast2/web/silence.mp3

RUN chown -R icecast2 /app
USER icecast2

EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]
CMD icecast2 -c /app/icecast.xml
