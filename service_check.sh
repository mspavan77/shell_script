#!/bin/bash

echo "===status check docker service==="
status="`sudo systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f 2 | cut -d '(' -f 1`"
echo $status
if [ $status = "active" ];
then
	echo "Service is up and running"
else
	echo "Starting a service"
	sudo systemctl start docker
fi
