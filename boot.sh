#!/bin/bash

runuser -l ga -c './config.sh --url https://github.com/yqchenee/WebProg2019 --token ALM2SOT7B7XBPWHYVKTWYLC7JNOZA --name gsh --unattended'
runuser -l ga -c './actions-runner/run.sh'&
python3 ../http-server.py 8000 tyler:tt -D
