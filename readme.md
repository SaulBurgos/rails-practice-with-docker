links
https://docs.docker.com/guides/ruby/containerize/

## How to run it

Create the rails app the first time
    docker run -it -v $PWD:/opt/app rails-toolbox rails new --skip-bundle hello_app
build the image
    docker build -t rails-toolbox .  
    docker build -t rails-toolbox -f Dockerfile .  
run container with iteractive mode
    docker run -it -v $PWD/hello_app:/opt/app rails-toolbox
    or 
    docker run -it -p 3000:3000 -v $PWD/hello_app:/opt/app rails-toolbox