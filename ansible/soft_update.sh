echo "hello"
sudo apt-get -y update
nl /etc/nginx/nginx.conf | sed 's/sendfile on/sendfile off/g'
echo "end"