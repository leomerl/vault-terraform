provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

provider "supabase" {
  access_token = var.supabase_access_token
}
