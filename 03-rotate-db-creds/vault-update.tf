resource "vault_generic_secret" "rotated_credentials" {
  path = var.vault_secret_path

  data_json = jsonencode({
    data = merge(
      local.db_credentials,
      {
        password          = random_password.rotated_password.result
        database_password = random_password.rotated_password.result
        rotated_at        = timestamp()
        rotation_count    = try(tonumber(local.db_credentials.rotation_count), 0) + 1
      }
    )
  })

  lifecycle {
    create_before_destroy = true
    ignore_changes        = []
  }

  depends_on = [null_resource.update_database_password]
}
