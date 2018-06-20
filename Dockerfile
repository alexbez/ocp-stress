# CPU-stress
FROM ubuntu
MAINTAINER Alexander Bezprozvanny <alexbez@gmail.com>

RUN apt-get update && \
    apt-get install -y stress-ng

CMD ["stress-ng", "-c", "50", "-t", "10m", "--perf", "--metrics"]
