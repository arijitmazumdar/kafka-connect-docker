# kafka-connect-docker
This simple project is to help to create kafka connect development environment

# Add a connector plugin
* Go to connect directory
* Add connector plugin as shown in the example

# Run the environment
* Run `docker-compose build connect`
* Run `docker-compose up -d connect`


# Note
* If using gloud environment, please add `export LD_LIBRARY_PATH=/usr/local/lib` in `~/.bashrc` file 
