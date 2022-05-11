db = db.getSiblingDB("kafka-connect-test");
db.createCollection("source");
db.createCollection("sink");
