# Install chrome
FROM debian:stretch-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get clean && apt-get update && apt-get install -y locales && locale-gen en_US.UTF-8

# Installing chrome
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get install -y google-chrome-stable --allow-unauthenticated

# Dowloading chromedriver 2.41
RUN apt-get install wget && apt-get install unzip
WORKDIR /tmp
RUN wget https://chromedriver.storage.googleapis.com/2.39/chromedriver_linux64.zip \
  && unzip chromedriver_linux64.zip -d /opt

EXPOSE 9515 

CMD /opt/chromedriver --whitelisted-ips='' 