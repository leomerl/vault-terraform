resource "null_resource" "update_database_password" {
  triggers = {
    password_hash = sha256(random_password.rotated_password.result)
    rotation_time = time_rotating.password_rotation.id
  }

  provisioner "local-exec" {
    command = <<-EOT
      curl -X PATCH "https://api.supabase.com/v1/projects/${local.db_credentials.project_id}/database/password" \
        -H "Authorization: Bearer ${var.supabase_access_token}" \
        -H "Content-Type: application/json" \
        -d '{"password": "${random_password.rotated_password.result}"}'
    EOT
  }

  lifecycle {
    create_before_destroy = true
  }
}
