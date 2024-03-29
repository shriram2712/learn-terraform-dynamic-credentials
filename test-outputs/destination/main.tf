data "tfe_outputs" "test" {
    organization =  "shriram-org"
    workspace = "source"
}


output "number" {
  value = data.tfe_outputs.test.values.number
  sensitive = true
}

output "name" {
  value = data.tfe_outputs.test.values.name
  sensitive = true
}

provider "tfe" {
  hostname = "terraform-enterprise.shriram-rajaraman.sbx.hashidemos.io"
}