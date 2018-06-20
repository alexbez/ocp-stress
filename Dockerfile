# CPU-stress
FROM ubuntu
MAINTAINER Alexander Bezprozvanny <alexbez@gmail.com>

RUN apt-get update && \
    apt-get install -y stress-ng

CMD ["stress-ng", "-c", "50", "--vm", "2", "--vm-bytes", "1G", "-t", "10m", "--perf", "--metrics-brief"]
