#!/bin/bash

case $1 in
     all)
          fleetctl start `ls *.service`
          ;;
     update)
          fleetctl destroy `ls *.service | grep -v proxy | xargs` && fleetctl start `ls *.service | grep -v proxy | xargs`
          ;;
     update-all)
          fleetctl destroy `ls *.service | xargs` && fleetctl start `ls *.service | xargs`
          ;;
     *)
          exit;
          ;;
esac