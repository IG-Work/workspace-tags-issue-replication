output "project_id" {
  description = "The ID of the created TFE project."
  value       = tfe_project.this.id
}

output "project_name" {
  description = "The name of the created TFE project."
  value       = tfe_project.this.name
}