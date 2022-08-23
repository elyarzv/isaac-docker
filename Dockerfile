FROM ros:foxy-ros-base

ENV DEBIAN_FRONTEND noninteractive

CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]

RUN apt-get update
RUN apt-get -y install \
    curl 
RUN apt-get clean

RUN curl -sSL http://get.gazebosim.org | sh

CMD ["gazebo"]