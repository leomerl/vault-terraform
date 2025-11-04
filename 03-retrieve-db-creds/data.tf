data "vault_generic_secret" "db_credentials" {
  path = var.vault_secret_path
}

locals {
  # Parse the nested data structure from Vault KV v2
  db_credentials = jsondecode(data.vault_generic_secret.db_credentials.data_json)["data"]
}
