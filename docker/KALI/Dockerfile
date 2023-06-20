FROM kalilinux/kali-bleeding-edge
RUN apt update 
RUN apt -y upgrade 
#RUN apt install -y kali-linux-everything 
RUN apt -y install kali-desktop-xfce
RUN apt -y install tightvncserver net-tools novnc

RUN vncpasswd
RUN /usr/share/novnc/utils/launch.sh --listen 5901 --vnc localhost:5900