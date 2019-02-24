#this is placed in the UI customization/scripts/Run After Router Started:

rm /home/admin/hosts
wget '--no-check-certificate' https://raw.githubusercontent.com/tanchunsiong/customhostfiles/master/hosts -O /home/admin/hosts

rm /etc/storage/dnsmasq/hosts
cp /home/admin/hosts /etc/storage/dnsmasq/hosts
killall dnsmasq
dnsmasq
