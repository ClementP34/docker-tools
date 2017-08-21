#!/bin/bash
#script equivalent a netstat pour les container docker
#quand netstat est introuvable
#pour utiliser, ./container-netstat.sh container_name_ou_id
#Necessite les droits root

PID_CONTAINER=`docker inspect -f '{{.State.Pid}}' ${1}`
nsenter -t $PID_CONTAINER -n netstat -paunt
