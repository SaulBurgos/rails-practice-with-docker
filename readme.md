## Links
- https://docs.docker.com/guides/ruby/containerize/
- https://containers.dev/implementors/json_reference/
- https://code.visualstudio.com/docs/devcontainers/containers

Setup rails:
- https://www.youtube.com/watch?v=ignW-lxGEc0

Dev containers:
- https://www.youtube.com/watch?v=SDa3v4Quj7Y

Working with Multiple Dev Containers:
- https://www.youtube.com/watch?v=bVmczgfeR5Y&t=426s

How to use a .env file to load environment variables in a dev container:
- https://www.youtube.com/watch?v=qTU7w3bWrOk

How to work with Monorepos in a dev container:
- https://www.youtube.com/watch?v=o5coAL7oE0o

How to make your bash history persist in a dev container:
- https://www.youtube.com/watch?v=12nZz-TjoZg

How to add a folder from your local file system to a dev container:
- https://www.youtube.com/watch?v=L1-dx-ZD0Ao


## How to run it

Create the rails app the first time
    - docker run -it -v $PWD:/rails rails-toolbox rails new --skip-bundle hello_app

build the image:
- docker build -t rails-toolbox .  
- docker build -t rails-toolbox -f Dockerfile .  

run container with iteractive mode:
- docker run -it -v $PWD/hello_app:/rails rails-toolbox
- or 
- docker run -it -p 3000:3000 -v $PWD/hello_app:/rails rails-toolbox

Docker compose:
- docker compose up --build 
- docker compose up --build -d
- docker compose down


## devcontainer.json

The "service" property in the devcontainer.json file is used to specify which service in your docker-compose.yml file should be treated as the primary service for the Dev Container environment.

What Happens When You Set the service Property?
Primary Service:

The service you specify in the service property will be the one used as your workspace container. This is where your development tools (like the VS Code server) will run, and your source code will be mounted.
Other Services:

All the other services defined in your docker-compose.yml file will still be started as part of the Compose application. These services will run in the same Docker network and will interact with each other as defined in the Compose file.
For example, if you have a database service and a backend service, the database service will start and be accessible to your backend service.