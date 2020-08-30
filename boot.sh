#!/bin/bash

# runuser -l ga -c './actions-runner/config.sh --url https://github.com/yqchenee/WebProg2019 --token ALM2SOTTEZ2WLPKCTYJWYBC7JOWUI  --name gsh --unattended'
# runuser -l ga -c './actions-runner/run.sh'&
python3 ../http-server.py 8000 un:pswd -D
