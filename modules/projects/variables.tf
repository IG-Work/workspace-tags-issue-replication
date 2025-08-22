variable "organization_name" {
  description = "The name of the TFE/TFC organization."
  type        = string
  default     = null
}

variable "project_name" {
  description = "The name of the project to be created."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of key-value tags to apply to the project."
  type        = map(string)
  default     = {
    tag = "project"
  }
}