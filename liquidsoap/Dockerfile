FROM savonet/liquidsoap:v1.4.4
LABEL maintainer "infra@radionoden.se"

USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER liquidsoap

COPY live.liq /live.liq

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
CMD liquidsoap  /live.liq
