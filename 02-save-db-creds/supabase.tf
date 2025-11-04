resource "supabase_project" "database" {
  organization_id   = var.supabase_organization_id
  name              = var.project_name
  database_password = random_password.db_password.result
  region            = var.supabase_region
}
