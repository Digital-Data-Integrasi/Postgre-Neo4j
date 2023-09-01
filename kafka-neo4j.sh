curl -H 'Content-Type: application/json' 192.168.18.191:8083/connectors --data '
{
  "name": "neo4j",
  "config": {
        "topics": "postgres.public.person",
        "connector.class": "streams.kafka.connect.sink.Neo4jSinkConnector",
        "key.converter": "org.apache.kafka.connect.storage.StringConverter",
        "value.converter": "org.apache.kafka.connect.json.JsonConverter",
        "errors.retry.timeout": "-1",
        "errors.retry.delay.max.ms": "1000",
        "errors.tolerance": "all",
        "errors.log.enable": true,
        "errors.log.include.messages": true,
        "neo4j.server.uri": "bolt://192.168.18.191:7687",
        "neo4j.authentication.basic.username": "neo4j",
        "neo4j.authentication.basic.password": "ddi123",
        "neo4j.batch.parallelize": "false",
        "neo4j.database": "gusti",
        "neo4j.encryption.enabled": "false",
        "value.converter.schemas.enable":"false",
        "neo4j.topic.cypher.postgres.public.person": "MERGE (p:Person{name: event.name, surname: event.surname}) MERGE (f:Family{name: event.surname}) MERGE (p)-[:BELONGS_TO]->(f)"
  }
}'
