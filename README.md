# nodejs_iauro
DOCKER :- 

1) downloaded your code (zip file) 
2) extracted it locally
3) created new repository and pushed that code into new github repo

4) I made some changes in /config/default.json 
5) renamed localhost to mongo in mongo db connection section
6) renamed locahost to mysql in mysql db connection section 

7) created dockerfile  and built the image from dockerfile using below command  
8) docker build -t nodeapp .

9) created docker-compose.yml  and ran below command
10) docker-compose up -d 


Custom confg for nginx 

$ sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
$ sudo openssl dhparam -out /etc/nginx/dhparam.pem 4096

$ sudo vi /etc/nginx/snippets/self-signed.conf
ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;

$ sudo vi /etc/nginx/snippets/ssl-params.conf
ssl_protocols TLSv1.2;
ssl_prefer_server_ciphers on;
ssl_dhparam /etc/nginx/dhparam.pem;
ssl_ciphers ECDHE-RSA-AES256-GCM-SHA512:DHE-RSA-AES256-GCM-SHA512:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-SHA384;
ssl_ecdh_curve secp384r1; # Requires nginx >= 1.1.0
ssl_session_timeout  10m;
ssl_session_cache shared:SSL:10m;
ssl_session_tickets off; # Requires nginx >= 1.5.9
ssl_stapling on; # Requires nginx >= 1.3.7
ssl_stapling_verify on; # Requires nginx => 1.3.7
resolver 8.8.8.8 8.8.4.4 valid=300s;
resolver_timeout 5s;
# Disable strict transport security for now. You can uncomment the following
# line if you understand the implications.
# add_header Strict-Transport-Security "max-age=63072000; includeSubDomains; preload";
add_header X-Frame-Options DENY;
add_header X-Content-Type-Options nosniff;
add_header X-XSS-Protection "1; mode=block";

$sudo cp /etc/nginx/sites-available/example.com /etc/nginx/sites-available/example.com.bak

$ sudo vi /etc/nginx/sites-available/example.com
server {
    listen 80;
    listen [::]:80;

    server_name example.com www.example.com;

    root /var/www/example.com/html;
    index index.html index.htm index.nginx-debian.html;

    . . .
}

$ sudo ufw app list
$ sudo ufw status 

$ sudo ufw allow 'Nginx Full'
$ sudo ufw delete allow 'Nginx HTTP'

$ sudo ufw status
$ sudo nginx -t

sudo systemctl restart nginx

https://server_domain_or_IP


for reference 

https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-18-04
