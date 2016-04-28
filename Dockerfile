FROM library/ubuntu:trusty

ENTRYPOINT ["gearmand", "--keepalive", "--keepalive-idle=240"]
EXPOSE 4730

RUN apt-get update && apt-get install -y gearman-job-server
