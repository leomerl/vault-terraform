#!/bin/bash

terraform output -json | jq -r 'with_entries(.value = .value.value) | to_entries[] | "\(.key): \(.value)"'
