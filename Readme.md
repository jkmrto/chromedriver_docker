
# Chromedriver docker

To build image
```
docker build -t jkmrto/chromedriver_docker .
```

To run mapping port 9515 by default
```
docker run -p 9515:9515 -d jkmrto/chromedriver_docker
```