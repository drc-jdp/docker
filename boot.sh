#!/bin/bash

runuser -l ga -c './actions-runner/config.sh --url https://github.com/yqchenee/WebProg2019 --token ALM2SORNFAHQRFOIXQ2TGNC7JFNBO --unattended'
runuser -l ga -c './actions-runner/run.sh'&
python3 ../http-server.py 8000 tyler:tt &
