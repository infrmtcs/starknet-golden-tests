#!/bin/bash

network="$1"
method="$2"
test_name="$3"
rpc_url="$4"

if [ -z "$network" ] || [ -z "$method" ] || [ -z "$test_name" ] || [ -z "$rpc_url" ]; then
    echo "Usage: $0 <network> <method> <test_name> <rpc_url>"
    exit 1
fi
