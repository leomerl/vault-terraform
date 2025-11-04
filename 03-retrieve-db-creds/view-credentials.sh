#!/bin/bash

echo "=== Credentials Retrieved from Vault ==="
echo ""
terraform output -json | jq -r 'with_entries(.value = .value.value) | to_entries[] | "\(.key): \(.value)"'
