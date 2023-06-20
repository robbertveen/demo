docker build -t httpd .

docker images

docker run -d --name myapache -p 80:80 httpd

docker ps -a1