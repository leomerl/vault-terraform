resource "vault_generic_secret" "foo_secret" {
  path = "secret/data/dir1"

  data_json = jsonencode({
    data = {
      foo = "bar"
      omer = "levy"
    }
  })
}
