# MQTT-Subscriber
```
Docker virtualizing Raspbian and running python subscriber
```

# Build
```
docker build -t mqtt-subscriber .
```

# Run
```
docker run --net=mqttbridge mqtt-subscriber
```
