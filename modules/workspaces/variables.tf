variable "organization_name" {
  description = "The name of the TFE/TFC organization."
  type        = string
}

variable "workspace_name" {
  description = "The name of the workspace to be created."
  type        = string
}

variable "project_id" {
  description = "The ID of the project where the workspace will be created."
  type        = string
}

variable "tags" {
  description = "A map of key-value tags to apply to the workspace."
  type        = map(string)
  default     = {}
}