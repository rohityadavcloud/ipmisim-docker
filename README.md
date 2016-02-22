
Run ipmi_sim from OpenIPMI-lanserv pkg on fedora, or use docker:

    sudo docker pull bhaisaab/ipmi_sim
    sudo docker run -p 192.168.1.12:9001:9001/udp -p 192.168.1.12:9001:9001 --name ipmisim -t bhaisaab/ipmi_sim start.sh

Or, build fresh using fedora:

    sudo docker build -t ipmi_sim .
    sudo docker run -it -p 9001:9001 -p 9001:9001/udp -P ipmi_sim start.sh

Testing client usage with ipmitool:

    $ ipmitool -I lanplus -H localhost -p 9001 -R1 -U admin -P password chassis power status
    Chassis Power is off
