[Unit]
Description=The NGINX HTTP and reverse proxy server
After=syslog.target network.target remote-fs.target nss-lookup.target

[Service]
Type=forking
PIDFile=/home/Leha_Noisy/nginx/logs/nginx.pid
ExecStartPre=/home/Leha_Noisy/nginx/sbin/nginx.pid -t
ExecStart=/home/Leha_Noisy/nginx/sbin/nginx
ExecReload=/bin/kill -s HUP $MAINPID
ExecStop=/bin/kill -s QUIT $MAINPID
PrivateTmp=true

[Install]
WantedBy=multi-user.target
