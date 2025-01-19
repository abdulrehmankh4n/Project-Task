variable "name" {
  type        = string
  description = "(Required) Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
}

variable "enabled_cluster_log_types" {
  type        = list(string)
  description = "(Optional) List of the desired control plane logging to enable."
  default     = []
}

variable "cluster_role_arn" {
  type        = string
  description = "(Required) ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf."
}

variable "subnet_ids" {
  type        = list(string)
  description = "(Required) List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane."
}

variable "cluster_version" {
  type        = string
  description = "(Optional) Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS."
  default     = null
}