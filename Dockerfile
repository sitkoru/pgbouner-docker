FROM alpine:latest
RUN apk --update add pgbouncer
WORKDIR /
ADD entrypoint.sh ./
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]