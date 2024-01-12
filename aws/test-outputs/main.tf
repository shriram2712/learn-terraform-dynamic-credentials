data "tfe_outputs" "test" {
    organization =  "shriramrajaraman"
    workspace = "learn-terraform-dynamic-credentials"
}


output "dns2" {
    value = data.tfe_outputs.test.values.domain_name
    sensitive = true
}