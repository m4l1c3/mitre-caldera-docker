# mitre-caldera-docker

Docker image for mitre caldera framework

This image retrieves and stores the additional mitre dependencies for running caldera and stores them in a browseable location for ease of setup in client instances. This includes: Microsoft's visual c++ compiler 2015, mitre's crater executable and version 0.10.0 of Mitre's agent that runs on test devices.

To build the image, you'll need to clone the latest copy of the caldera framework to the conf folder.

## Installation

After cloning this repository you will want to make sure that you run the setup.sh script.  One note, make sure the setup.sh file is executable prior to running it (chmod +x setup.sh).

