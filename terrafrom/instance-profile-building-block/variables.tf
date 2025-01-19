variable "instance_profile_name" {
  type        = string
  description = "(Optional, Forces new resource) Name of the instance profile. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: _, +, =, ,, ., @, -. Spaces are not allowed."
}

variable "iam_role_name" {
  type        = string
  description = "(Optional) Name of the role to add to the profile."
}

variable "path" {
  type        = string
  default     = "/"
  description = "(Optional, default ' / ') Path to the instance profile. For more information about paths, see IAM Identifiers in the IAM User Guide. Can be a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters."
}

variable "instance_profile_tags" {
  type = map(string)
}