variable "vault_address" {
  description = "Vault server address"
  type        = string
  default     = "http://127.0.0.1:8200"
}

variable "vault_token" {
  description = "Vault authentication token"
  type        = string
  sensitive   = true
}

variable "vault_secret_path" {
  description = "Path to the Vault secret containing database credentials"
  type        = string
  default     = "secret/data/db-credentials"
}

variable "supabase_access_token" {
  description = "Supabase access token for API access"
  type        = string
  sensitive   = true
}

variable "rotation_days" {
  description = "Number of days before password rotation"
  type        = number
  default     = 30
}
