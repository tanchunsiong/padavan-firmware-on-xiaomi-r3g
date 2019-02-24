 #copy dnsmasq.awk to your home directory

 opkg install logread
 opkg install adblock

 #run the below command, do note that your log file location might be different
 chmod +x dnsmasq.awk
 tail -f /tmp/syslog.log | ./dnsmasq.awk
