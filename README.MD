1) Clone this repo in any directory on your machine and choose directory ./docker_tomcat as your working directory.
```bash
sudo git clone https://github.com/mjco0085/docker_tomcat_env_ports
```
2) Check port settings in file ./start.port.sh 
it's 80 for HTTPS and 443 for HTTPS by default. 
3) Run building docker image by command
```bash
sudo docker build -t my_image .
```
4) Run container by command
```bash
sudo docker run -d -p 80:80 -p 443:443 my_image:latest
```
Dont't forget to change ports for you own settings, if it needs.
___________________
Btw, you can create you own certificate by command from main directory of repo.(You should delete old certificates first and change password in server.xml)
```bash
sudo openssl req -x509 -newkey rsa:4096 -keyout ./ssl/localhost-rsa-key.pem -out ./ssl/localhost-rsa-cert.pem -days 36500
```
