#! /bin/bash -e

CONTRACT_DIRS="ftgo-accounting-service-contracts ftgo-consumer-service-contracts ftgo-order-service-contracts ftgo-restaurant-order-service-contracts"

COMMAND=$*

if [[ -z "$COMMAND" ]] ; then
   COMMAND=publish
fi

echo Using $COMMAND

for dir in $CONTRACT_DIRS ; do
 (cd $dir ; ../gradlew $COMMAND)
 done
