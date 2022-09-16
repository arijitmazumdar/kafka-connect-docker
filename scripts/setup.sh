#!/bin/bash

. $SDKMAN_DIR/bin/sdkman-init.sh

sudo apt install -y kafkacat
sdk install kcctl

kcctl config set-context default --bootstrap-servers=localhost:9092 --cluster=http://localhost:8083
