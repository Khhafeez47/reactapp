#!bin/bash

if [ $( docker ps -a | grep sample-reactapp | wc -l ) -gt 0 ]; then
  docker stop sample-reactapp
  docker rm sample-reactapp
  docker rmi 533623287468.dkr.ecr.us-east-1.amazonaws.com/sample-reactapp:stage-latest
fi

exit 0
