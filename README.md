# kafka-connect-docker
This simple project is to help to create kafka connect development environment

<<<<<<< HEAD
# Install tools
* Execute scripts/setup.sh 
* Exit from terminal and login again

=======
>>>>>>> 63ed2595ecd55a0b97d2a405c66c59f4471dc2d9
# Add a connector plugin
* Go to connect directory
* Open Dockerfile
* Add connector plugin as shown in the example

# Run the environment
* Run `docker-compose build connect`
* Run `docker-compose up -d connect`

# Deploy a connector
* Deploy the connect file using `kcctl install <filename>`. 
* Once deployed check status using `kcctl get connectors`

# Test
* Publish data using `kafkacat -P -b localhost:9092 -t test`


# Note
<<<<<<< HEAD
* If using Gcloud cloud shell environment, please add `export LD_LIBRARY_PATH=/usr/local/lib` in `~/.bashrc` file. In this way we can avoid docker-compose build issues  
=======
* If using Gcloud cloud shell environment, please add `export LD_LIBRARY_PATH=/usr/local/lib` in `~/.bashrc` fileGcloud. In this way we can avoid docker-compose build issues  
>>>>>>> 63ed2595ecd55a0b97d2a405c66c59f4471dc2d9
