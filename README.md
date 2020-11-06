# Waypoint Test App

Testing Hashicorp Waypoint

[Official Document](https://learn.hashicorp.com/tutorials/waypoint/get-started-docker?in=waypoint/get-started-docker)

## Steps

- Install the Docker desktop from [here](https://www.docker.com/get-started)
- Clone this repository `git clone https://github.com/Satak/waypoint-test.git`
- Install Waypoint cli from [here](https://www.waypointproject.io/downloads)
- Pull the Waypoint server Docker image `docker pull hashicorp/waypoint:latest`
- Install the Waypoint server `waypoint install -platform=docker -accept-tos`
- Run `waypoint init`
- Run `waypoint up`
