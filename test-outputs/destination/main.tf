data "tfe_outputs" "test" {
    organization =  "shriram-org"
    workspace = "source"
}


output "number" {
  value = data.tfe_outputs.test.values.number
}

output "name" {
  value = data.tfe_outputs.test.values.name
}