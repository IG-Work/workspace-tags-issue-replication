resource "tfe_workspace" "this" {
  name         = var.workspace_name
  organization = var.organization_name
  project_id   = var.project_id
  tags = var.tags
}

resource "tfe_workspace_settings" "self" {
  workspace_id        = tfe_workspace.this.id
  #assessments_enabled = true
}
