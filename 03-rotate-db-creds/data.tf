data "vault_generic_secret" "db_credentials" {
  path = var.vault_secret_path
}

locals {
  db_credentials = jsondecode(data.vault_generic_secret.db_credentials.data_json)["data"]
}
