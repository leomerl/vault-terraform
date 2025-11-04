#!/bin/bash

docker exec -e VAULT_ADDR='http://127.0.0.1:8200' -e VAULT_TOKEN='root' vault-dev vault kv get secret/data/db-credentials
