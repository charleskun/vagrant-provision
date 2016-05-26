echo "update"
apt-get -q -y update
apt-get -q -y upgrade
apt-get -q -y autoremove
apt-get -q -y autoclean
apt-get -q -y clean
# nl /etc/nginx/nginx.conf | sed 's/sendfile on/sendfile off/g'
# 
#新增站点
echo "Setting up Nginx mapping"
cat > "/etc/nginx/sites-enabled/v3-toa.conf" <<END
server {
    server_name a.kai12.oo;

    root /vagrant/k12_toa/School/school_demo;

    location /static {
        alias /vagrant/k12_toa/School/app/static;
    }

    include locations.conf;
}
END
echo "restart nginx"
service nginx restart