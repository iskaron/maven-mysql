FROM maven:3.6.3-openjdk-11-slim

RUN apt update && apt install -y default-mysql-client git firefox-esr && rm -rf /var/lib/apt/lists/*

