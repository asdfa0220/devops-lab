
FROM ubuntu

WORKDIR /app

COPY app.log /app/app.log
COPY monitor.sh /app/monitor.sh

RUN apt-get update && apt-get install -y grep

CMD ["bash", "/app/monitor.sh"]
