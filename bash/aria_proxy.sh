ssh -N -D 9999 socks_server
sudo privoxy /etc/privoxy/config
aria2c --all-proxy=http://127.0.0.1:8118 file
