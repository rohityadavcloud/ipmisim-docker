FROM fedora

RUN dnf install -y OpenIPMI-lanserv

COPY lan.conf /
COPY sim.emu /
COPY start.sh /bin

EXPOSE 9001
EXPOSE 9001/udp
