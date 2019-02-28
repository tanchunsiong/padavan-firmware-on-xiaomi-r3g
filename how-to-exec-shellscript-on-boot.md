#this is placed in the UI customization/scripts/Run After Router Started:

rm /home/admin/hosts
rm /home/admin/hostsdefault
wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hosts -O /home/admin/hosts
wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hostsdefault -O /home/admin/hostsdefault

rm /tmp/hostfiles/hosts
rm /tmp/hostfiles/hostsdefault

cp /home/admin/hosts /tmp/hostfiles/hosts
cp /home/admin/hostsdefault /tmp/hostfiles/hostsdefault

killall dnsmasq
dnsmasq