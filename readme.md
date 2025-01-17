## links
https://docs.docker.com/guides/ruby/containerize/
https://www.youtube.com/watch?v=ignW-lxGEc0

## How to run it

Create the rails app the first time
    docker run -it -v $PWD:/rails rails-toolbox rails new --skip-bundle hello_app
build the image
    docker build -t rails-toolbox .  
    docker build -t rails-toolbox -f Dockerfile .  
run container with iteractive mode
    docker run -it -v $PWD/hello_app:/rails rails-toolbox
    or 
    docker run -it -p 3000:3000 -v $PWD/hello_app:/rails rails-toolbox

Docker compose
    docker compose up --build 
    docker compose up --build -d
    docker compose down