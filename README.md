# kafka-connect-mongodb

Slightly modified version of the official MongoDB Kafka Connector tutorial which can be found [here](https://www.mongodb.com/docs/kafka-connector/v1.7/tutorials/replicate-with-cdc/).

Most of the containers used by the official tutorial are not usable on architectures other than `amd64` so some crucial components such as Kafka Connect and Kafka itself are based on other images here:

- Kafka: [wurstmeister/kafka-docker](https://github.com/wurstmeister/kafka-docker)
- Kafka Connect: [OneCricketeer/apache-kafka-connect-docker](https://github.com/OneCricketeer/apache-kafka-connect-docker)
