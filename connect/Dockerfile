FROM cnfldemos/cp-server-connect-datagen:0.5.3-7.1.0
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-sftp:3.1.4
RUN confluent-hub install --no-prompt confluentinc/connect-transforms:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:10.5.3
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-json-schema:0.2.5
RUN confluent-hub install --no-prompt debezium/debezium-connector-postgresql:2.2.1
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-transform-common:latest
