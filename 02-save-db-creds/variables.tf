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

variable "supabase_access_token" {
  description = "Supabase access token"
  type        = string
  sensitive   = true
}

variable "supabase_organization_id" {
  description = "Supabase organization ID"
  type        = string
}

variable "project_name" {
  description = "Name of the Supabase project"
  type        = string
  default     = "vault-managed-db"
}

variable "supabase_region" {
  description = "Supabase region"
  type        = string
  default     = "eu-central-1"
}
