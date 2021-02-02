# mynginxandfastcgi

Custom nginx that has additonal libraries to support vim, apache workbench, fastCGI module for php and a self-signed certificate for https access

Created self-signed certificates on the Alpine Linux distro of nginx image 
openssl req -x509 -days 100 -nodes -newkey rsa:2048 -keyout ./self.key -out ./self.cert


