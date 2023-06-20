https://developers.redhat.com/blog/2020/03/24/red-hat-universal-base-images-for-docker-users#introducing_red_hat_universal_base_images

# run docker to create image

$ docker build -t php-hello .
$ docker run --name hello -p 8080:8080 -d php-hello