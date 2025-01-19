variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
  description = "(Required) Name of the EKS add-on."
}

variable "cluster_name" {
  type        = string
  description = "(Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
}