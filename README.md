# kafka-connect-docker
This simple project is to help to create kafka connect development environment

# Install tools
* Execute scripts/setup.sh 
* Exit from terminal and login again to use `kcctl`
* `kcat` available via `apt` is a little old, cannot deserialize avro messages. To do so we should better use docker version. By adding a few lines in `~/.bashrc` we can experience exactly use it like native app.

```
kcat() {
  docker run -it --network=host --rm edenhill/kcat:1.7.1  $*
}
```

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
* Publish data using `kcat -P -b localhost:9092 -t test`
* Consume data using `kcat -C -b localhost:9092 -t test`
* Consume avro data using `kcat -C -b localhost:9092  -s value=avro -r http://localhost:8081 -t test`
* Publish data continously or bulk data (avro or string) using datagen source connector. Sample Connectors are present in the repository.
  

# Note
* If using Gcloud cloud shell environment, please add `export LD_LIBRARY_PATH=/usr/local/lib` in `~/.bashrc` fileGcloud. In this way we can avoid docker-compose build issues  

# Reference Project
* https://github.com/confluentinc/avro-random-generator
* https://www.confluent.io/hub/confluentinc/kafka-connect-datagen
