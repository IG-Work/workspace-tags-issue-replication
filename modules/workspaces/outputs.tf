output "workspace_id" {
  description = "The ID of the created TFE workspace."
  value       = tfe_workspace.this.id
}

output "workspace_name" {
  description = "The name of the created TFE workspace."
  value       = tfe_workspace.this.name
}