# kafka-kubernetes
Flask app that consumes and produce Kafka messages

To Do:
  - add a react or vue front end client
  - add a DB and Kafka connect to read data from it
  - integrate more data sources
  - show data from different source in the UI, make it update then new data arrives without refresh
### Build the consumer and producer images

docker build -t kafka-producer -f Dockerfile ./services/kafka/producer/
docker build -t kafka-consumer -f Dockerfile ./services/kafka/consumer/

### Deploy the app using the local images

Note: Using Confluentinc zookeeper and Kafka image

`docker-compose -f docker-compose.yaml build`
`docker-compose -f docker-compose.yaml up`