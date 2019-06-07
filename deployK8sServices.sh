#!/bin/bash
for filename in k8s/*.yaml; do
       echo "Deploying $filename"
       kubectl apply -f "$filename"
       read -t 10 -p "Hit ENTER or wait ten seconds" 
done
