FROM library/ubuntu:trusty

ENTRYPOINT ["gearmand"]
EXPOSE 4730

RUN apt-get update && apt-get install -y gearman-job-server
