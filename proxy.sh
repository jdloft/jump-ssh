#!/bin/sh
while :; do
    echo "Proxy run"
    ssh -NT -o ServerAliveInterval=30 -o ServerAliveCountMax=3 -o ExitOnForwardFailure=yes -i /ssh_key -R $REMOTE_PORT:localhost:22 $SSH_USER@$SSH_HOST
    echo "End loop backoff (30s)"
    sleep 30
done
