output "secret_path" {
  value       = vault_generic_secret.db_credentials.path
  description = "Path where the database credentials are stored in Vault"
}

output "project_id" {
  value       = supabase_project.database.id
  description = "Supabase project ID"
}

output "project_name" {
  value       = supabase_project.database.name
  description = "Supabase project name"
}

output "database_host" {
  value       = "db.${supabase_project.database.id}.supabase.co"
  description = "Database host"
}
