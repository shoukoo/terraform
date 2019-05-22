#!/bin/bash

set -exuo pipefail

# PWD##*/ is equivalent to $(basename $PWD)

docker run -it \
       -v ${PWD}/..:/root/app/ -w /root/app/${PWD##*/} \
       -e AWS_SECRET_ACCESS_KEY \
       -e AWS_ACCESS_KEY_ID \
       -e AWS_REGIONS \
       -e AWS_SESSION_TOKEN \
       -e AWS_SECURITY_TOKEN \
       -e AWS_PROFILE \
       -e TF_LOG \
       terraform:latest terraform $@
