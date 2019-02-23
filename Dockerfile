FROM ubuntu:16.04

COPY Leap-2.3.1-x64.deb /
RUN sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list && cd / && apt-get update && (dpkg -i Leap-2.3.1-x64.deb ; exit 0) && apt-get install -y -f && DEBIAN_FRONTEND=noninteractive apt-get install -yq libxslt1.1 sqlite3 libglib2.0-0 kwin-wayland unzip weston wget xauth xclip xdg-utils xdotool xfishtank xpra x11-xserver-utils xserver-xephyr xserver-xorg-video-dummy xvfb xwayland

CMD ["/bin/bash"]
