#!/bin/bash
echo "### STARTING SETUP NOTIFICATION SERVICE ###"

echo "### VARIABLES ###"
source variables.sh

echo "### CREATE BRIDGE - ${DOCKER_NET_NAME} ###"
./create_bridge.sh

echo "### POSTGRES ###"
./postgresql/index.sh

echo "### SETUP RUNNING ###"
