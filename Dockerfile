# CPU-stress
FROM ubuntu
MAINTAINER Alexander Bezprozvanny <alexbez@gmail.com>

RUN apt-get update && \
    apt-get install -y stress-ng

CMD stress-ng -c 0 -l 20 -t 2m
CMD stress-ng -c 0 -l 40 -t 2m
CMD stress-ng -c 0 -l 80 -t 3m
CMD stress-ng -c 0 -l 40 -t 3m
