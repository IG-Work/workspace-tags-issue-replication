terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.68.0"
    }
  }
}


provider "tfe" {
    hostname = "app.terraform.io"
    token    = var.tfe_token
}

variable "tfe_token" {
  description = "The token"
  type        = string
}

locals {
  organization_name = "test-yashi" 

  project_tags = {
    "CostCenter"    = "IT-Infra"
    "Environment"   = "SharedServices"
    "ManagedBy"     = "Terraform"
  }

  workspace_tags = {
    "appname"       = "core-api"
    "environment"   = "development"
    "tier"          = "backend"
  }
}

# Create a new project using the project module.
module "my_project" {
  source = "./modules/projects"

  organization_name = local.organization_name
  project_name      = "tags-replication-test"
  tags              = local.project_tags
}

# Create a new workspace within the project created above.
# This module depends on the output from the 'my_project' module.
module "my_workspace" {
  source = "./modules/workspaces"

  organization_name = local.organization_name
  workspace_name    = "tags-test-workspace"
  project_id        = module.my_project.project_id 
  tags              = local.workspace_tags
}
