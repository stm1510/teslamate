# TeslaMate Docker Setup

This guide will walk you through setting up TeslaMate using Docker. TeslaMate is an open-source data logger for Tesla vehicles, and this setup uses Docker for easy deployment.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

## Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/your-username/teslamate-docker.git
cd teslamate-docker




###  Create the .env File


POSTGRES_PASSWORD=your_postgres_password
TESLAMATE_SECRET_KEY_BASE=your_secret_key_base
MQTT_USERNAME=your_mqtt_username
MQTT_PASSWORD=your_mqtt_password


### You can use any Dashboard you want I am using grafana since i have immense knowledge about 


#### Start the Docker Containers

docker-compose up -d

    - After successfully running docker-compose up -d you will be able to access the following pages on ports teslamate :4000 and Grafana on :3000, respectively.

## Access TeslaMate

http://localhost:4000


## Monitor and Manage Containers

docker-compose logs -f <service_name>






##generate your Tesla token to access your vehicle’s data.

 You can find an official FAQ on how to do this at https://docs.teslamate.org/docs/faq/#how-to-generate-your-own-tokens. I personally used an application called “Auth for Tesla.”  had the idea and knowledge from Piotr Raszkowski 
