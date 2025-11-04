resource "vault_generic_secret" "db_credentials" {
  path = "secret/data/db-credentials"

  data_json = jsonencode({
    data = {
      project_id        = supabase_project.database.id
      project_name      = supabase_project.database.name
      database_password = random_password.db_password.result
      host              = "db.${supabase_project.database.id}.supabase.co"
      port              = 5432
      database          = "postgres"
      username          = "postgres"
      password          = random_password.db_password.result
      created_at        = timestamp()
    }
  })

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      data_json
    ]
  }
}
