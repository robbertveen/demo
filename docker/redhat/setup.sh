echo " starting redhat installation" 
docker build -t php-hello .
docker run --name hello -p 8080:8080 -d php-hello