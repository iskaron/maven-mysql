FROM maven:3-openjdk-11-slim

RUN apt update && apt install -y default-mysql-client git firefox-esr && rm -rf /var/lib/apt/lists/*
RUN cd /usr/bin && rm firefox && ln -s firefox-esr firefox
ADD https://github.com/mozilla/geckodriver/releases/download/v0.27.0/geckodriver-v0.27.0-linux64.tar.gz /geckodriver.tar.gz
RUN cd /usr/bin && tar xf /geckodriver.tar.gz && rm /geckodriver.tar.gz
RUN echo "export DISPLAY=:8" >> /etc/profile
RUN echo "export DISPLAY=:8" >> /etc/bash.bashrc

