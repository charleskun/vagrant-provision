echo "hello"
apt-get -q -y update
apt-get -q -y upgrade
apt-get -q -y autoremove
apt-get -q -y autoclean
apt-get -q -y clean
# nl /etc/nginx/nginx.conf | sed 's/sendfile on/sendfile off/g'
echo "end"