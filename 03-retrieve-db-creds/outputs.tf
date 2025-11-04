output "database_host" {
  value       = local.db_credentials.host
  description = "Database host from Vault"
  sensitive   = true
}

output "database_name" {
  value       = local.db_credentials.database
  description = "Database name from Vault"
  sensitive   = true
}

output "project_id" {
  value       = local.db_credentials.project_id
  description = "Supabase project ID from Vault"
  sensitive   = true
}

output "connection_string" {
  value       = "postgresql://${local.db_credentials.username}:${local.db_credentials.password}@${local.db_credentials.host}:${local.db_credentials.port}/${local.db_credentials.database}"
  description = "PostgreSQL connection string from Vault credentials"
  sensitive   = true
}

output "project_name" {
  value       = local.db_credentials.project_name
  description = "Supabase project name from Vault"
  sensitive   = true
}

output "credentials_retrieved" {
  value       = "Successfully retrieved credentials from Vault for project: ${local.db_credentials.project_name}"
  description = "Status message"
  sensitive   = true
}
