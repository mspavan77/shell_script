#!/bin/bash

echo "Downloadig the prometheus"

if [ -e /home/ubuntu/prometheus-3.1.0.linux-amd64.tar.gz ];
then
	echo "The prometheus is already exixts"
	tar -zxvf prometheus-3.1.0.linux-amd64.tar.gz
else 
	echo "Need to install prometheus"
	wget https://github.com/prometheus/prometheus/releases/download/v3.1.0/prometheus-3.1.0.linux-amd64.tar.gz
	tar -zxvf prometheus-3.1.0.linux-amd64.tar.gz
	echo "Getting in and running prometheus"
	cd prometheus-3.1.0.linux-amd64
        ./prometheus --config.file=prometheus.yml
fi
