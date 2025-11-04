resource "time_rotating" "password_rotation" {
  rotation_days = var.rotation_days
}

resource "random_password" "rotated_password" {
  length  = 16
  special = true
  upper   = true
  lower   = true
  numeric = true

  keepers = {
    rotation_time = time_rotating.password_rotation.id
  }
}
