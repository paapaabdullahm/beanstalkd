FROM ubuntu:16.04
LABEL maintainer="Abdullah Morgan paapaabdullahm@gmail.com"

ENV DEBIAN_FRONTEND noninteractive
ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt update && \
	apt install -y beanstalkd && \
	apt clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /var/lib/beanstalkd/data

EXPOSE 11300
CMD ["/usr/bin/beanstalkd"]
