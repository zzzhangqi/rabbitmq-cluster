#!/bin/bash

if [ "$POD_NAME" = "$SERVICE_NAME-0" ]; then
    export RABBITMQ_NODE_TYPE=stats
fi

if [ "$POD_NAME" = "$SERVICE_NAME-1" ]; then
    export RABBITMQ_NODE_TYPE=queue-ram
fi

if [ "$POD_NAME" = "$SERVICE_NAME-2" ]; then
    export RABBITMQ_NODE_TYPE=queue-ram
fi

export RABBITMQ_NODE_NAME=rabbit@${HOSTNAME}.${SERVICE_NAME}.${NAMESPACE}.svc.cluster.local