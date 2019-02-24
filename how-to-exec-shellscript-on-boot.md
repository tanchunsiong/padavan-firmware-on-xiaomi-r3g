#this is placed in the UI customization/scripts/Run After Router Started:

rm /home/admin/hosts
rm /home/admin/hostsdefault
wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hosts -O /home/admin/hosts
wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hostsdefault -O /home/admin/hostsdefault

rm /etc/storage/dnsmasq/hosts
rm /etc/storage/dnsmasq/hostsdefault

cp /home/admin/hosts /etc/storage/dnsmasq/hosts
cp /home/admin/hostsdefault /etc/storage/dnsmasq/hostsdefault

killall dnsmasq
dnsmasq