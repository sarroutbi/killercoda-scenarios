#!/bin/bash
echo Waiting for Kubernetes to start...
while [ ! -f /root/.kube/config ]
do
  sleep 1
done
if [ -f /root/.kube/start ];
then
  /root/.kube/start
fi
echo
echo Kubernetes started
echo
