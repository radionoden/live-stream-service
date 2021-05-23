FROM savonet/liquidsoap:v1.4.4
LABEL maintainer "infra@radionoden.se"

USER root
RUN mkdir app
COPY entrypoint.sh /app/entrypoint.sh
COPY live.liq /app/live.liq
RUN chmod +x /app/entrypoint.sh
RUN chown -R liquidsoap app
USER liquidsoap

EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]
CMD liquidsoap /app/live.liq
