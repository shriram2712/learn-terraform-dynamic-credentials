data "tfe_outputs" "test" {
    organization =  "shriramrajaraman"
    workspace = "learn-terraform-dynamic-credentials"
}


output "dns3" {
    value = data.tfe_outputs.test.values.domain_name
    sensitive = true
}