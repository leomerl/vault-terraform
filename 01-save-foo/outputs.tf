output "secret_path" {
  value       = vault_generic_secret.foo_secret.path
  description = "Path where the secret was stored"
}
